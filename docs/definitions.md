# slo_windows

Configured service-level objective windows/targets.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| name | VARCHAR(120) | NO |  | SLO identifier. |
| objective | mysql: JSON / postgres: JSONB | NO |  | JSON description of what is being measured. |
| target_pct | mysql: DECIMAL(5,2) / postgres: NUMERIC(5,2) | NO |  | Target success percentage. |
| window_interval | mysql: VARCHAR(64) / postgres: INTERVAL | NO |  | Interval over which the SLO is computed. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_slo_windows_name | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| ux_slo_windows_name | name | CONSTRAINT ux_slo_windows_name UNIQUE (name) |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_slo_windows_name | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| ux_slo_windows_name | name | CREATE UNIQUE INDEX IF NOT EXISTS ux_slo_windows_name ON slo_windows (name) |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_slo_windows | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_slo_windows | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
