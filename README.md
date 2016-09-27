# Unaccompanied Children Reporting API

Unaccompanied children apprehended by the Department of Homeland Security (DHS) immigration officials are transferred to the care and custody of Office of Refugee Resettlement (ORR). ORR promptly places an unaccompanied child in the least restrictive setting that is in the best interests of the child, taking into consideration danger to self, danger to the community, and risk of flight. ORR takes into consideration the unique nature of each child’s situation and incorporates child welfare principles when making placement, clinical, case management, and release decisions that are in the best interest of the child.

More info: www.acf.hhs.gov/orr/programs/ucs

This repo will contain an API application used to wrap the existing
database (or in demo mode, a mocked database).

## Deploying

Deploy information is available in [deploy.md](deploy.md).

## Ruby Version

Ruby version and gem sets are specified in `.ruby-version` and
`.ruby-gemset` files. Using `rbenv` or `rvm` just cd into the directory
and the version manager will give you feedback on installing the needed
version.

## Databases
Create databases for development and test using the rake script:

    rake db:create:all

The underlying database is ported from oracle and for demonstration
purposes we are using postgres. It uses schemas :(. To properly setup
the database, you need to import from a dump. The project has a schema
checked in, but it cannot be used to setup the database because of the
schema path usage.

    # development database
    psql -f db/hhs.structure.sql hhs-acf-uc-api_development # or path to your dump
    psql hhs-acf-uc-api_development
    set search_path=uacportal,uac_health

    # test database
    psql -f db/hhs.structure.sql hhs-acf-uc-api_test # or path to your full dump
    psql hhs-acf-uc-api_test
    set search_path=uacportal,uac_health

## Queries and usage

This application exposes and handles in memory no PII. All PII stays in
the existing database extracting only calculations, dates and ids and
other non-sensitive information.

Only the queries needed for the dashboard have been created:

### Authentication

All endpoints must be authenticated.  Authentication is handled with a [JSON Web Token](https://jwt.io/) presented by the caller in the HTTP header of the request.  The [JWT gem](https://github.com/jwt/ruby-jwt) is a good library to help build the token.  The token must be encrypted with HMAC using a SHA512 hash, using a secret key.

The HMAC secret is used to encrypt authentication calls to the API. It is essentially a cryptographic key shared between the API and its clients, so it should be reasonably secure. A reasonable choice would be to concatenate together a couple of passwords from https://www.grc.com/passwords.htm.

For the API to function, the shared secret must be in an environment variable called `AUTH_HMAC_SECRET`.  In development, this secret is set in the `.env` file and is read into the environment using [dotenv](https://github.com/bkeepers/dotenv).  **It is important to note** that the `.env` file is **NOT** read in production.

For client requests, the JWT token must be placed in the `Authorization` header, preceded by the word "Token" (e.g., the full header would be `Authorization: Token {token}`).

An example using RestClient:

```
require "rest-client"
require "JWT"

hmac_secret = ENV["AUTH_HMAC_SECRET"]
token = JWT.encode({:role => 'user role', :exp => Time.now.to_i + 86400}, hmac_secret, "HS512")

RestClient.get("http://127.0.0.1:3000/enrollments/count", headers={:Authorization => "Token #{token}"})
```

#### Referrals on a given date

    /referrals # defaults to today
    /referrals?on=2016-07-14 # on a particular day
    /referrals/count # defaults to today
    /referrals/count?on=2016-07-14 # on a particular day

#### Placements

According to Olympia, this is the same as Referrals, just different
syntax used by the intake team.

#### Discharges on a given date

    /discharges # defaults to today
    /discharges?on=2016-07-14 # on a particular day
    /discharges/count # defaults to today
    /discharges/count?on=2016-07-14 # on a particular day

#### In care on a given date*

    /discharges # defaults to today
    /discharges?on=2016-07-14 # on a particular day
    /discharges/count # defaults to today
    /discharges/count?on=2016-07-14 # on a particular day

----

## Sample queries

    /enrollments
    /enrollments/count/
    /enrollments?cob=Honduras&gender=M

All enrollments, with only the explicitly specified filters.
Adding `/count/` provides an integer number instead of the
full records (and returns much faster).

    /in_care/
    /in_care/count
    /in_care/count?cob=Honduras&gender=M

Filtered to children currently in care.

    /in_care/count?on=2014-02-01

Filtered to children in care on Feb. 1, 2014.

    /placements?on=2014-02-22
    /referrals?on=2014-02-22
    /discharges?on=2014-02-22

Filtered to children placed, referred, and discharged
(respectively) on that date.  These endpoints also
support `/count/`.

## Rails API only
This app was created with a flag to indicate that it is API only. View
layers and other parts of Rails are not installed to have a lighter,
faster code base.

[API only Rails](http://edgeguides.rubyonrails.org/api_app.html)

## Tests

Test are in rspec. Since this is an api-only application no selenium or
headless substitute needed! The test database does need to be loaded
since database constraints make it hard to write data into the database.
This is going to make a CI server really hard since the setup involves
psql and setting the schema. That will need to wait!

Follow instruction above to pre-load data into the test database.

Run the tests with the `rspec` command.

## Contributing

See [CONTRIBUTING](CONTRIBUTING.md) for additional information.


## Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in [CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright and related rights in the work worldwide are waived through the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication. By submitting a pull request, you are agreeing to comply with this waiver of copyright interest.

### Deploying

    cf target -o 18F-acq -s staging
