# Deploying the API

## Environment

You will need a Linux environment with [Ruby](https://www.ruby-lang.org/en/) installed.  To see which version of Ruby is currently installed, run:

```
ruby --version
```

To see which version of Ruby the API currently needs:

```
cat .ruby-version
```

If your environment has a different version of Ruby than what the API expects, you can either change the global version or install [rvm](http://rvm.io/) to manage multiple Ruby versions.  Once rvm is installed, you can install the proper version of Ruby by running:

```
rvm install `cat .ruby-version`
```

## The application

The application depends on a handful of Ruby libraries.  These are specified in the Gemfile.  The Gemfile provides a quick way to install all of the libraries at once using `bundle` instead of having to do each one manually.  To install the application library dependencies, run:

```
# Make sure bundle is installed.
gem install bundle

# Install from the Gemfile
bundle install
```

## Deploy scripting

Without a PaaS for deployment, the best option for scripting deploys is a tool called [Capistrano](http://capistranorb.com/). Capistrano solves the problems of maintaining shared resources between deploys such as database configuration and logs.

Using this tool or another, database configuration is managed via a file that is copied in after the code is deployed: `config/database.yml`. The one checked into source control is setup for development/test environments, and can serve as an example for the one needed for production. See [Rails documentation](http://edgeguides.rubyonrails.org/configuring.html#configuring-a-database) for more details on what this file contains and how it can be modified (more notes in the next section as well).

## Preparing the database

The largest chunk of work will be finding the right configuration for connecting to the database. This application will connect to the oracle reporting database within the existing system.

We have included [activerecord-oracle_enhanced-adapter](https://github.com/rsim/oracle-enhanced) to handle connecting to Oracle, and it has some [database.yml configuration documentation](https://github.com/rsim/oracle-enhanced#database-connection) that may be helpful.  For example, this might make a suitable `production` configuration:

```
production:
  url: <%= ENV['DATABASE_URL'] %>
```

Then add your database connection URL to your environment variables.  For example:

```
export DATABASE_URL='oracle-enhanced://username:password@host:port/database-name'
```

> **NOTE:** It is a best practice to put your database connection information in an environment variable in any case.  This is inline with the [12-factor app methodology](https://12factor.net/config).  This makes moving the app around much easier.

## Environment variables

There are a few required environment variables:

```
export RAILS_ENV='production'
export RACK_ENV='production'
export AUTH_HMAC_SECRET='some-secret-string'
export SECRET_KEY_BASE='some-other-secret-string'
```

You may also need database connection information depending on your configuration.

The `AUTH_HMAC_SECRET` environment variable is used to encrypt authentication calls between the Dashboard and API, and must be set to the same value on both.

In addition Rails uses a secret key to authenticate requests. In order
for the server to work, you will need to set this value to a key.

These keys are cryptographic keys and should thus be reasonably strong and secure.  Helpfully, Rails comes with a handy script for generating theses keys:

```
rake secret
```

You can just copy the output of this script into your environment variables.

>**Note:** If the `AUTH_HMAC_SECRET` is changed, it must *also* be changed on all clients, such as the Dashboard.  This key must be the same on the API and all clients or else the clients cannot authenticate to the API.

## Start the API

To start the API, you'll need to launch rails and indicate what network interface to bind to.  To do this, run:

```
# Bind to every interface
bin/rails server --binding=0.0.0.0
```

By default, this will listen on port 3000.  To change the port, use the `-p` argument:

```
bin/rails server --binding=0.0.0.0 -p 3001
```
