CREATE Table rating_table_p
(userid STRING,
movieid STRING,
rating STRING
)
partitioned by(dt STRING )
row format delimited fields terminated by '\t'
lines terminated by '\n'

