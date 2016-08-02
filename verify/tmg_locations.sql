-- Verify census_stations_parse:tmg_locations on pg

BEGIN;

SELECT location_id,segment_id,name,cal_pm,abs_pm,latitude,longitude,angle,abbrev,freeway_id,freeway_dir,district,county_id,city_id,version,geom_4326,geom_4269
  FROM census_detectors.tmg_locations
 WHERE FALSE;


ROLLBACK;
