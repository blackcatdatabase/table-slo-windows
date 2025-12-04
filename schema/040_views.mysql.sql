-- Auto-generated from schema-views-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  slo_windows

-- Contract view for [slo_windows]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_slo_windows AS
SELECT
  id,
  name,
  objective,
  target_pct,
  window_interval,
  created_at
FROM slo_windows;
