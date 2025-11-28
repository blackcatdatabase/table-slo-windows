-- Auto-generated from feature-modules-mysql.psd1 (map@mtime:2025-11-27T17:06:04Z)
-- engine: mysql
-- table:  slo_windows_rollup
-- SLO last computed status
CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_slo_rollup AS
WITH ranked AS (
  SELECT
    w.id AS window_id,
    w.name,
    w.objective,
    w.target_pct,
    w.window_interval,
    s.computed_at,
    s.sli_value,
    s.good_events,
    s.total_events,
    s.status,
    ROW_NUMBER() OVER (PARTITION BY w.id ORDER BY s.computed_at DESC) AS rn
  FROM slo_windows w
  LEFT JOIN slo_status s ON s.window_id = w.id
)
SELECT
  window_id,
  name,
  objective,
  target_pct,
  window_interval,
  computed_at,
  sli_value,
  good_events,
  total_events,
  status
FROM ranked
WHERE rn = 1;
