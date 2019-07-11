from rating_table_ex
insert overwrite table rating_table_b
select userid,movieid,rating;
