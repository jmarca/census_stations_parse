-- Deploy census_stations_parse:tmg_locations to pg
-- requires: calvad_db_geoextensions:geoextensions

-- sample data
--
-- 64237,694673,44.371,433.12,37.638279,-122.490166,100.976396,SB OFF TO PALOMA AVE,,1,S,4,81,54806
-- 64238,694673,44.371,433.12,37.638279,-122.490166,100.976396,Leg F,,1,S,4,81,54806

BEGIN;

create table census_detectors.tmg_locations (
    location_id bigint not null primary key,
    segment_id bigint not null,
    name character varying(64) NOT NULL,
    cal_pm varchar (12) not null,
    abs_pm numeric not null,
    latitude numeric,
    longitude numeric,
    angle numeric,
    abbrev varchar (128),
    freeway_id integer,
    freeway_dir varchar (8),
    district integer,
    county_id integer,
    city_id integer,
    version timestamp without time zone
);

SELECT AddGeometryColumn('census_detectors', 'tmg_locations', 'geom_4269', 4269, 'POINT', 2);
SELECT AddGeometryColumn('census_detectors', 'tmg_locations', 'geom_4326', 4326, 'POINT', 2);

COMMIT;
