CREATE Table udtf_test_table
(data STRING
)
row format delimited fields terminated by '\t'
stored as textfile
location '/udtf_dir'
