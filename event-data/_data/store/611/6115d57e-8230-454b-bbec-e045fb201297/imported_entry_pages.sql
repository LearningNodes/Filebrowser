ATTACH TABLE _ UUID '3b84d0e9-8842-46fd-b61d-2cf543f70ad0'
(
    `site_id` UInt64,
    `date` Date,
    `entry_page` String,
    `visitors` UInt64,
    `entrances` UInt64,
    `visit_duration` UInt64,
    `bounces` UInt32
)
ENGINE = MergeTree
ORDER BY (site_id, date, entry_page)
SETTINGS index_granularity = 8192
