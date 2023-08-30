ATTACH TABLE _ UUID 'abfff90e-9f7a-45b8-9921-dcf02facb50b'
(
    `site_id` UInt64,
    `date` Date,
    `operating_system` String,
    `visitors` UInt64,
    `visits` UInt64,
    `visit_duration` UInt64,
    `bounces` UInt32
)
ENGINE = MergeTree
ORDER BY (site_id, date, operating_system)
SETTINGS index_granularity = 8192
