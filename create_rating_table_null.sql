CREATE EXTERNAL Table rating_table_null
(userid STRING,
movieid STRING,
rating STRING,
ts STRING
)
row format delimited fields terminated by ','
stored as textfile
