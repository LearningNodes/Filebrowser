ATTACH TABLE _ UUID 'bb75fd3b-d4a9-42da-9226-9f230717dd0b'
(
    `site_id` UInt64,
    `date` Date,
    `browser` String,
    `visitors` UInt64,
    `visits` UInt64,
    `visit_duration` UInt64,
    `bounces` UInt32
)
ENGINE = MergeTree
ORDER BY (site_id, date, browser)
SETTINGS index_granularity = 8192
