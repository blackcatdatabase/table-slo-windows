-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  slo_windows

CREATE UNIQUE INDEX IF NOT EXISTS ux_slo_windows_name ON slo_windows (name);
