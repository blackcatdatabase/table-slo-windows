-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  slo_windows

CREATE UNIQUE INDEX IF NOT EXISTS ux_slo_windows_name ON slo_windows (name);
