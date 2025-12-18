-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  slo_windows

CREATE UNIQUE INDEX IF NOT EXISTS ux_slo_windows_name ON slo_windows (name);
