ATTACH TABLE _ UUID '4fe9ece5-8e48-4445-8fe1-15a9078a4859'
(
    `site_id` UInt64,
    `date` Date,
    `visitors` UInt64,
    `pageviews` UInt64,
    `bounces` UInt64,
    `visits` UInt64,
    `visit_duration` UInt64
)
ENGINE = MergeTree
ORDER BY (site_id, date)
SETTINGS index_granularity = 8192
