-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  slo_windows_rollup
-- SLO last computed status
CREATE OR REPLACE VIEW vw_slo_rollup AS
SELECT DISTINCT ON (w.id)
  w.id AS window_id,
  w.name,
  w.objective,
  w.target_pct,
  w.window_interval,
  s.computed_at,
  s.sli_value,
  s.good_events,
  s.total_events,
  s.status
FROM slo_windows w
LEFT JOIN slo_status s ON s.window_id = w.id
ORDER BY w.id, s.computed_at DESC NULLS LAST;

-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
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

