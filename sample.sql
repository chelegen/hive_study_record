select * from rating_table_b tablesample(bucket 3 out of 16 on userid) limit 10;
