ATTACH TABLE _ UUID '66a6c177-aae4-41b7-b193-9a3ee6594a88'
(
    `site_id` UInt64,
    `date` Date,
    `exit_page` String,
    `visitors` UInt64,
    `exits` UInt64
)
ENGINE = MergeTree
ORDER BY (site_id, date, exit_page)
SETTINGS index_granularity = 8192
