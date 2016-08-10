# Unaccompanied Children Reporting API

Unaccompanied children apprehended by the Department of Homeland Security (DHS) immigration officials are transferred to the care and custody of Office of Refugee Resettlement (ORR). ORR promptly places an unaccompanied child in the least restrictive setting that is in the best interests of the child, taking into consideration danger to self, danger to the community, and risk of flight. ORR takes into consideration the unique nature of each child’s situation and incorporates child welfare principles when making placement, clinical, case management, and release decisions that are in the best interest of the child.

More info: www.acf.hhs.gov/orr/programs/ucs

This repo will contain an API application used to wrap the existing
database (or in demo mode, a mocked database).

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
    psql -f ../hhs.pgdump hhs-acf-uc-api_development # or path to your dump
    psql hhs-acf-uc-api_development
    set search_path=uacportal,uac_health

    # test database
    psql -f ../hhs.pgdump hhs-acf-uc-api_test # or path to your dump
    psql hhs-acf-uc-api_test
    set search_path=uacportal,uac_health

## Rails API only
This app was created with a flag to indicate that it is API only. View
layers and other parts of Rails are not installed to have a lighter,
faster code base.

[API only Rails](http://edgeguides.rubyonrails.org/api_app.html)

## Tests

Test are in rspec. Since this is an api-only application no selenium or
headless substitute needed! Feature specs can be developed in rspec with
`rails g rspec:feature`.

Run the tests with the `rspec` command

## Contributing

See [CONTRIBUTING](CONTRIBUTING.md) for additional information.


## Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in [CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright and related rights in the work worldwide are waived through the [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication. By submitting a pull request, you are agreeing to comply with this waiver of copyright interest.

