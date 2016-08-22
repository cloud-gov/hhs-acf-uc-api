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

For this first version of the API, two databases are accessed.  One is for
storage of data collected with this API (for instance, bed capacity
data).  The second is a copy of the existing application's database -
actually, a PostgreSQL port of the existing application's demonstration
database.  To set this up, get the `hhs.pgdump` file (not checked into
this repo), and

    createdb hhs
    psql -f hhs.pgdump hhs # or path to your dump

Then you will need to run an HTSQL server against this database.

    virtualenv-2.7 ~/venvs/htsql
    source ~/venvs/htsql/bin/activate
    pip install htsql-pgsql
    htsql-ctl serve -E tweak.autolimit:limit=10 pgsql://:@/hhs

Leave that process running and start the Rails service.

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
