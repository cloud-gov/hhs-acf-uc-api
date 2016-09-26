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

Using this tool or another, database configuration is managed via a file that is copied in after the code is deployed: `config/database.yml`. The one checked into source control is setup for development/test environments, and can serve as an example for the one needed for production. See [Rails documentation (http://edgeguides.rubyonrails.org/configuring.html#configuring-a-database) for more details on what this file contains and how it can be modified.
 
## Preparing the database

The largest chunk of work will be preparing the database.  This requires editing the file at `config/database.yml`.

[[Does anyone know what should go here?]]

There are Ruby scripts provided to create the database using `rake`.  To get the database ready, run:

```
# Make sure rake is installed
gem install rake

# Create the database
rake db:create:all
```

## Environment variables

There are three required environment variables:

```
export RAILS_ENV='production'
export RACK_ENV='production'
export AUTH_HMAC_SECRET='some-secret-string'
```

The `AUTH_HMAC_SECRET` environment variable is used to encrypt authentication calls between the Dashboard and API, and must be set to the same value on both.  It is a cryptographic key so should be reasonably secure.  A reasonable choice would be to concatenate together a couple of passwords from https://www.grc.com/passwords.htm.

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
