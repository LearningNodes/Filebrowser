ATTACH TABLE _ UUID 'ff4b69e1-c33a-4b11-a37f-b552484f0170'
(
    `site_id` UInt64,
    `date` Date,
    `device` String,
    `visitors` UInt64,
    `visits` UInt64,
    `visit_duration` UInt64,
    `bounces` UInt32
)
ENGINE = MergeTree
ORDER BY (site_id, date, device)
SETTINGS index_granularity = 8192
