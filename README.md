# Unaccompanied Children Reporting API

Unaccompanied children apprehended by the Department of Homeland Security (DHS) immigration officials are transferred to the care and custody of Office of Refugee Resettlement (ORR). ORR promptly places an unaccompanied child in the least restrictive setting that is in the best interests of the child, taking into consideration danger to self, danger to the community, and risk of flight. ORR takes into consideration the unique nature of each child’s situation and incorporates child welfare principles when making placement, clinical, case management, and release decisions that are in the best interest of the child.

More info: www.acf.hhs.gov/orr/programs/ucs

This repo will contain an API application used to wrap the existing
database (or in demo mode, a mocked database).

# Installation

## Ruby Version

Ruby version and gem sets are specified in `.ruby-version` and
`.ruby-gemset` files. Using `rbenv` or `rvm` just cd into the directory
and the version manager will give you feedback on installing the needed
version.

## Running through Vagrant

If you can [install Vagrant](https://www.vagrantup.com/), this
is the easiest way to run.  Clone this repository, `cd hhs-acf-uc-api`,
and then run:

    vagrant up
    vagrant ssh

Within the vagrant SSH session, run

    cd /host
    ./run-on-vagrant.sh

## Running locally

Install [PostgreSQL](https://www.postgresql.org/), then
create databases for development and test using the rake script:

    rake db:create:all

For this first version of the API, two databases are accessed.  One is for
storage of data collected with this API (for instance, bed capacity
data).  The second is a copy of the existing application's database -
actually, a PostgreSQL port of the existing application's demonstration
database.  To set this up:

    createdb hhs
    psql -f db/hhs_slice.pgdump hhs

Then you will need to run an HTSQL server against this database.

    virtualenv-2.7 ~/venvs/htsql
    source ~/venvs/htsql/bin/activate
    pip install htsql-pgsql
    htsql-ctl serve -C htsql-config.yml pgsql://:@/hhs

Leave that process running and start the Rails service.

# Usage

## Full reports  

The following reports return a row for each child's enrollment history.

    /children

The most general form of the report, with no filtering.

    /children?in_care=Y

Includes only children whose status is 'IN-TRANSFER', 'ADMITTED', or 'ENROUTE'
with regard to a program.  These are the ones accounted for in
a "Census" value of children in care.

Some similar filters available:

    tender_age (12 or less)

Extra boolean fields are available that can conveniently show
whether a child was `referred_today`, `placed_today`, or
`discharged_today`.  These are equivalent to checking whether
`referral_date`, `date_orr_approved`, or `facility_discharged_date`
(respectively) equal today's date.

## By-day

When the query includes an `as_of` filter (accepting a date, or
  `now` or `today`), then the following fields are calculated according
  to that date:

    referred_today
    placed_today
    discharged_today
    in_care

Example:

    /children?in_care=Y&as_of=2016-07-20

The other fields do *not necessarily* reflect the record's status at the
`as_of` date.  For instance, `uac_status` is still the child's *present*
status, which may not be their status on the `as_of` date.

TODO: That is way too confusing.  Need to think about how to resolve it.

## Counts

For `/children/count/`, instead of one record per child, there will be one
record per day, with numbers rather than Y/N for `in_care`,
`referred_today`, `placed_today`, and `discharged_today`.  

# Development

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
