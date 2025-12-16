-- Auto-generated from schema-views-mysql.yaml (map@sha1:FFA9A9D6FA9EE079B0DAEBB6FEE023C138E8FFA1)
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
