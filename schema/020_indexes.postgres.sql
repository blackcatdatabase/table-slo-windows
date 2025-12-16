-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  slo_windows

CREATE UNIQUE INDEX IF NOT EXISTS ux_slo_windows_name ON slo_windows (name);
