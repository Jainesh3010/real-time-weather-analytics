use testd;

select*from weather_data;


select city,temperature,wind_speed,weather from weather_data;

select city,temperature from weather_data
order by temperature desc
limit 1;


select city,temperature from weather_data
order by temperature asc
limit 1;


select city,temperature,humidity,wind_speed,weather from weather_data where city="Surat";


select distinct city,temperature from weather_data
order by temperature desc
limit 1 offset 1 ;


select city,temperature,rank() over(order by temperature desc) as "rank" from weather_data;



select city,temperature,dense_rank() over(order by temperature desc) as "rank" from weather_data where weather_date="2026-05-31";


with avg_temp as(
select avg(temperature) as avg_tempe
from weather_data
)
select city,temperature from weather_data,avg_temp
where temperature>avg_tempe;

select weather,count(weather) as "total cities" from weather_data group by weather;