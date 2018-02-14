SELECT countries.name, languages.language, languages.percentage
FROM countries
Join languages 
on countries.id = languages.country_id
where languages.language = "Slovene"
ORDER BY languages.percentage DESC;

SELECT countries.name, COUNT(*) as cities
FROM countries
LEFT JOIN cities 
ON cities.country_id = countries.id
GROUP BY countries.name
ORDER BY cities DESC;

SELECT cities.name, cities.population
from cities
left join countries
on countries.id = cities.country_id
where countries.name = "Mexico" and cities.population > 500000
ORDER BY cities.population DESC;

SELECT countries.name, languages.language, languages.percentage
from languages
LEFT JOIN countries
ON languages.country_id = countries.id
where languages.percentage > 89
ORDER BY languages.percentage DESC;

SELECT name, surface_area, population
from countries
where surface_area < 501 and population > 100000

Select name, government_form, capital, life_expectancy
from countries
where government_form = "Constitutional Monarchy" and capital > 200 and life_expectancy > 75

SELECT countries.name, cities.name, cities.district, cities.population
from cities
left join countries
on countries.id = cities.country_id
where countries.name = "Argentina" and cities.district = "Buenos Aires" and cities.population > 500000

SELECT region, count(*) as countries from countries
group by region
order by countries DESC;












