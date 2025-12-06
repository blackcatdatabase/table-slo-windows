-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  slo_windows

CREATE UNIQUE INDEX IF NOT EXISTS ux_slo_windows_name ON slo_windows (name);
