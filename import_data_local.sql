LOAD DATA LOCAL
INPATH '/home/master/test/hive_test/ml-latest-small/ratings.csv'
OVERWRITE INTO TABLE
rating_table_null;
