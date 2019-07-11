select /* +MAPJOIN(b) */ B.userid,A.title,B.rating
from movie_table A
join rating_table_ex B
on A.movieid == B.movieid
limit 100;
