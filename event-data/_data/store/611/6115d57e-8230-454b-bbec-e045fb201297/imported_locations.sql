ATTACH TABLE _ UUID 'fcc47580-dd23-4da1-83f0-c85526798d62'
(
    `site_id` UInt64,
    `date` Date,
    `country` String,
    `region` String,
    `city` UInt64,
    `visitors` UInt64,
    `visits` UInt64,
    `visit_duration` UInt64,
    `bounces` UInt32
)
ENGINE = MergeTree
ORDER BY (site_id, date, country, region, city)
SETTINGS index_granularity = 8192
