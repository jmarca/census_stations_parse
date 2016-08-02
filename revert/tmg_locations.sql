-- Revert census_stations_parse:tmg_locations from pg

BEGIN;

drop table tmg_locations;

COMMIT;
