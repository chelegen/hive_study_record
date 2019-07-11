LOAD DATA LOCAL
INPATH '/home/master/test/hive_test/ml-latest-small/2003-10.data'
OVERWRITE INTO TABLE
rating_table_p
partition(dt='2003-10');
