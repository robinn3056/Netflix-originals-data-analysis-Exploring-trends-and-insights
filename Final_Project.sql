create database project;
use project;


select*from netflix_originals;
select*from genre_details;


select g.Genre, avg(n.IMDBScore) as avg_score
from genre_details as g 
join netflix_originals as n on
g.GenreID=n.GenreID
group by 
g.Genre;


select g.Genre, avg(n.IMDBScore) as avg_IMDBscore
from genre_details as g
join netflix_originals as n
on n.GenreID=g.GenreID
group by g.Genre
having avg(n.IMDBScore)>7.5;


select Title, IMDBScore from netflix_originals
order by IMDBScore desc;


select Title, Runtime from netflix_originals
order by Runtime desc
limit 10;


select g.Genre, count(n.Title) as total
from genre_details as g 
join netflix_originals as n on
g.GenreID=n.GenreID
group by 
g.Genre;


select n.Title, g.Genre,
rank() over 
(partition by g.Genre order by n.IMDBScore) as ranking
from netflix_originals as n
join genre_details as g
on n.GenreID = g.GenreID;


select Title, IMDBScore
from netflix_originals
where IMDBScore>( select avg(IMDBScore) from netflix_originals);


select g.Genre, count(n.Title) as total_originals
from genre_details as g
left join netflix_originals as n
on g.GenreID=n.GenreID
group by g.Genre;


select*from netflix_originals;


select g.Genre, count(n.Title) as Total_show
from genre_details as g
join netflix_originals as n
on g.GenreID=n.GenreID
where n.IMDBScore > 8
group by g.Genre
having count(n.Title) >5 ;


select g.Genre, avg(IMDBScore)
from genre_details as g
join netflix_originals as n
on g.GenreID=n.GenreID
group by g.Genre
order by avg(IMDBScore) desc
limit 3;
