set hive.enforce.bucketing=true;


CREATE Table rating_table_b
(userid STRING,
movieid STRING,
rating STRING
)
CLUSTERED BY (userid) INTO 16 buckets;
