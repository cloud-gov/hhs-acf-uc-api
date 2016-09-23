-- Functions that ora2pg does not account for.

-- Thanks to araqnid, http://stackoverflow.com/a/14258327

create function pg_catalog.months_of(interval)
 returns int strict immutable language sql as $$
  select extract(years from $1)::int * 12 + extract(month from $1)::int
$$;

create function pg_catalog.months_between(timestamp without time zone, timestamp without time zone)
 returns int strict immutable language sql as $$
   select abs(pg_catalog.months_of(age($1, $2)))
$$;
