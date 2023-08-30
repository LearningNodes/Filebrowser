ATTACH TABLE _ UUID '639fe34f-bb75-4239-8666-d75939487342'
(
    `site_id` UInt64,
    `date` Date,
    `hostname` String,
    `page` String,
    `visitors` UInt64,
    `pageviews` UInt64,
    `exits` UInt64,
    `time_on_page` UInt64
)
ENGINE = MergeTree
ORDER BY (site_id, date, hostname, page)
SETTINGS index_granularity = 8192
