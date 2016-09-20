Migrating Oracle to PostgreSQL
------------------------------

Proved surprisingly involved, so I'm recording some steps.

Assumptions

- Run under `oracle` linux account

Install ora2pg
--------------

[run as root](pg_install_history.sh)

Create database
---------------

    createdb hhs
    psql -f extra.sql hhs

then get and install [ora2pg](http://ora2pg.darold.net/)

Run ora2pg twice...
-------------------

Once for each schema (uac_health, uacportal):

    ora2pg --init_project <schema_name>
    cp ora2pg.<schema_name>.conf <schema_name>/config/ora2pg.conf
    cd <schema_name>
    ./export_schema
    rm schema/views/V_15DAY_ENROUTE_view.sql # until the UDFs are worked out
    sed -i '/V_15DAY/d' schema/views/view.sql
    sed -i 's/group#/group_/' schema/views/V_PC_UNDERWRITERS_view.sql
    ./import_all -d hhs -o oracle

During `import_all.sh`
----------------------

Choose Y only for:

- tables
- views
- sequences
- direct import

After importing tables for `uacportal`, but after importing views,
run in a separate session this correction script:

    psql -f fix_pks.sql hhs
