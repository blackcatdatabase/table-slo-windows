<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – slo_windows

Configured service-level objective windows/targets.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| name | VARCHAR(120) | NO | — | SLO identifier. |  |
| objective | JSONB | NO | — | JSON description of what is being measured. |  |
| window_interval | INTERVAL | NO | — | Interval over which the SLO is computed. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |