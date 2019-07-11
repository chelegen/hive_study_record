create table docs(line string);
 
LOAD DATA LOCAL
hive> INPATH '/home/master/test/hive_test/ml-latest-small/The_Man_of_Property.txt'
hive> OVERWRITE INTO TABLE
hive> docs;

hive> create table word_count(word string,cnt int)row format delimited fields terminated by '\t';

hive> add file /home/master/test/hive_test/transform_wc/mapper.py;

hive> add file /home/master/test/hive_test/transform_wc/red.py;

hive> select transform (M.word,M.count)using "python red.py"
    > from
    > (select transform(line) using "python mapper.py" as word,count from docs cluster by word) M
    > limit 10;

hive> insert overwrite table word_count
