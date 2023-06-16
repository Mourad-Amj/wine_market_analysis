--We would to give create a country leaderboard,
-- give us a visual that shows the average wine rating for each country.
-- Do the same for the vintages
SELECT AVG(wines.ratings_average)AS "average rating",regions.country_code AS "country", countries.users_count AS "number of users"
FROM wines
JOIN regions
ON wines.region_id = regions.id
JOIN countries
ON regions.country_code = countries.code
GROUP BY country_code
ORDER BY AVG(wines.ratings_average) DESC;







