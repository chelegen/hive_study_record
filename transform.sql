awk:
	add file /home/master/test/hive_test/transform.awk;

	select transform(movieid,title)using "awk -f transform.awk" as aaa from movie_table limit 10;

python:
	hive> add file /home/master/test/hive_test/transform.py

	select transform(movieid,title)using "python transform.py" as bbb from movie_table limit 10; 

