-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-11-27T15:36:13Z)
-- engine: postgres
-- table:  slo_windows

-- Contract view for [slo_windows]
CREATE OR REPLACE VIEW vw_slo_windows AS
SELECT
  id,
  name,
  objective,
  target_pct,
  window_interval,
  created_at
FROM slo_windows;
