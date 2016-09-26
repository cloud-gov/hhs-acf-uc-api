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

The environment will also need [PostgreSQL](https://www.postgresql.org/).

## The application

The application depends on a handful of Ruby libraries.  These are specified in the Gemfile.  The Gemfile provides a quick way to install all of the libraries at once using `bundler` instead of having to do each one manually.  To install the application library dependencies, run:

```
# Make sure bundler is installed.
gem install bundler

# Install from the Gemfile
bundler install
```

## Preparing the database

There are Ruby scripts provided to create the database using `rake`.  To get the database ready, run:

```
# Make sure rake is installed
gem install rake

# Create the database
rake db:create:all
```

Next, import the schema and data using psql commands:

```
psql -f db/hhs.structure.sql hhs-acf-uc-api_development # or path to your dump
psql hhs-acf-uc-api_development
set search_path=uacportal,uac_health
```

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
