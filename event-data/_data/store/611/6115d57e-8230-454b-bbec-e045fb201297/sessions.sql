ATTACH TABLE _ UUID '1fee714e-4e15-4a38-a6e6-65320a26c52b'
(
    `session_id` UInt64,
    `sign` Int8,
    `domain` String,
    `user_id` UInt64,
    `hostname` String,
    `is_bounce` UInt8,
    `entry_page` String,
    `exit_page` String,
    `pageviews` Int32,
    `events` Int32,
    `duration` UInt32,
    `referrer` String,
    `referrer_source` String,
    `country_code` LowCardinality(FixedString(2)),
    `screen_size` LowCardinality(String),
    `operating_system` LowCardinality(String),
    `browser` LowCardinality(String),
    `start` DateTime,
    `timestamp` DateTime,
    `utm_medium` String,
    `utm_source` String,
    `utm_campaign` String,
    `browser_version` LowCardinality(String),
    `operating_system_version` LowCardinality(String),
    `subdivision1_code` LowCardinality(String),
    `subdivision2_code` LowCardinality(String),
    `city_geoname_id` UInt32,
    `utm_content` String,
    `utm_term` String,
    `transferred_from` String,
    `entry_meta.key` Array(String),
    `entry_meta.value` Array(String)
)
ENGINE = CollapsingMergeTree(sign)
PARTITION BY toYYYYMM(start)
ORDER BY (domain, user_id, session_id, start)
SAMPLE BY user_id
SETTINGS index_granularity = 8192
