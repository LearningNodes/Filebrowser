ATTACH TABLE _ UUID 'e01b6bec-6cbe-48f3-a491-0c628b97bea4'
(
    `name` String,
    `domain` String,
    `user_id` UInt64,
    `session_id` UInt64,
    `hostname` String,
    `pathname` String,
    `referrer` String,
    `referrer_source` String,
    `country_code` LowCardinality(FixedString(2)),
    `screen_size` LowCardinality(String),
    `operating_system` LowCardinality(String),
    `browser` LowCardinality(String),
    `timestamp` DateTime,
    `utm_medium` String,
    `utm_source` String,
    `utm_campaign` String,
    `meta.key` Array(String),
    `meta.value` Array(String),
    `browser_version` LowCardinality(String),
    `operating_system_version` LowCardinality(String),
    `subdivision1_code` LowCardinality(String),
    `subdivision2_code` LowCardinality(String),
    `city_geoname_id` UInt32,
    `utm_content` String,
    `utm_term` String,
    `transferred_from` String
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(timestamp)
ORDER BY (name, domain, user_id, timestamp)
SAMPLE BY user_id
SETTINGS index_granularity = 8192
