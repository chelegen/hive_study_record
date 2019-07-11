CREATE Table movie_table
(movieid STRING,
title STRING,
genres STRING
)
row format delimited fields terminated by ','
stored as textfile
location '/movie_table'
