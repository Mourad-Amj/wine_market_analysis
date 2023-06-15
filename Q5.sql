--We would like to do a selection of wines that are easy to find all over the world. Find the top 3 most common grape all over the world and 
--for each grape, give us the the 5 best rated wines.

SELECT countries.name AS country, ROUND(AVG(ratings_average),2) AS avg_rating, users_count
FROM wines
INNER JOIN regions
ON wines.region_id = regions.id
INNER JOIN countries
ON regions.country_code = countries.code
GROUP BY country_code
ORDER BY avg_rating DESC