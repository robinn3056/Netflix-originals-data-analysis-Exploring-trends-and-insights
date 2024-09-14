 -- Part - A
 
create database module4;
use module4;

select*from Track;
select*from Genre;

select Track.Name, Genre.GenreId, Genre.Name
from Track 
join Genre on Track.GenreId=Genre.GenreId;

select Track.Name, Genre.GenreId, Genre.Name
from Track 
left join Genre on Track.GenreId=Genre.GenreId;

select Track.Name, Genre.GenreId, Genre.Name
from Track 
right join Genre on Track.GenreId=Genre.GenreId;

select Track.Name, Genre.GenreId, Genre.Name
from Track 
cross join Genre on Track.GenreId=Genre.GenreId;

select Name
from Track 
where Milliseconds > 300000
union
select Name 
from Track
where UnitPrice > 0.99;

select Name
from Track 
where Bytes>7000000
union all
select Name 
from Track
where AlbumId>4;

select*from Genre;

select Name, GenreId from Track
where GenreId=(select GenreId from Genre where Name='Rock');

select Genre.Name, count(Track.Name) from Genre 
left join Track on Track.GenreId = Genre.GenreId
group by Genre.Name;


select Genre.Name from Genre 
left join Track on track.GenreId = Genre.GenreId
where Track.GenreId is null;

select Genre.Name, Track.GenreId, Genre.GenreId, Track.Name from Genre 
cross join Track on Track.GenreId = Genre.GenreId
where Track.GenreId is null
and
Genre.GenreId not in (
select distinct GenreId 
from Track
);


-- Part - B-- 

select*from titanic;

select first_name, last_name, fare from titanic 
where fare>(select avg(fare) from titanic);

select first_name, last_name from titanic 
where class=(select class from titanic 
where first_name='Julia' and last_name='Patel');

select*from titanic;

select first_name, last_name from titanic
where ( select count(embark_town) as most_common from titanic
group by embark_town
order by most_common desc
limit 1);

select first_name, last_name, age from titanic 
where age<(select avg(age) from titanic);

select first_name, last_name, fare from titanic 
order by fare desc 
limit 10;

SELECT first_name, last_name, class, Survived
FROM titanic
WHERE class IN (
    SELECT class
    FROM titanic
    GROUP BY class
    HAVING AVG(Survived) > (
        SELECT AVG(Survived)
        FROM titanic
    )
);

SELECT first_name, last_name, deck, fare
FROM titanic
WHERE deck IN (
    SELECT deck
    FROM titanic
    GROUP BY deck
    HAVING AVG(fare) < (
        SELECT AVG(fare)
        FROM titanic
        limit 1
    )
);


select first_name, last_name, pclass from titanic
where fare > ( select avg(fare) from titanic 
where pclass = '1')
union 
select first_name, last_name, pclass from titanic
where fare > ( select avg(fare) from titanic 
where pclass = '2')
union 
select first_name, last_name, pclass from titanic
where fare > ( select avg(fare) from titanic 
where pclass = '3')
order by pclass
;


select first_name, last_name, embark_town, age from titanic
where age in ( select avg(age) from titanic
group by embark_town );

select first_name, last_name, deck from titanic
where deck = (select deck
from titanic 
group by deck
order by count(*) desc
limit 1);


-- Part - C-- 


select first_name, Passenger_No, class,
lead (Passenger_No)
over ( partition by class
order by Passenger_No) as nextpassenger
from titanic;

select first_name, Passenger_No, fare, class,
fare - LAG(fare) OVER (PARTITION BY class ORDER BY Passenger_No) AS FareDifference
from titanic;

select Passenger_No, class, fare,
rank() over( partition by class order by fare) as ranking
from titanic;

select Passenger_No, class, age,
dense_rank() over( partition by class order by age) as ranking
from titanic;

select Passenger_No, embark_town,
row_number() over( partition by embark_town) as ranking
from titanic;

select*from titanic;
select Passenger_No, sex,
lead(Passenger_No) over (partition by sex order by Passenger_No) as next_female
from titanic
where sex = 'Female';

select first_name, age, class,
age - lag(age) over (partition by class order by Passenger_No)
from titanic
where sex='Male';

select Passenger_No, fare,
rank() over (partition by class order by fare) as passenger_rank
from titanic
where sex = 'Female'
;

select Passenger_No, age, pclass,
dense_rank() over (partition by class order by age) as rank_of_survived
from titanic
where survived=1
;

select Passenger_No, embark_town,
row_number() over (partition by embark_town order by Passenger_No) as Rownumber
from titanic
where embark_town= 'Southampton'
;

