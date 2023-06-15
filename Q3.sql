--We would like to give a price to the best winery, which one should we choose and why?
SELECT wineries.name AS wineries, COUNT(wineries.name) AS "number of wines", AVG(wines.ratings_average) AS "wine average score" , AVG(wines.ratings_count) AS "average count rating"
FROM wines
INNER JOIN wineries
ON wines.winery_id = wineries.id
WHERE wines.ratings_average > 4.6 and wines.ratings_count > 1000
GROUP BY wineries.name
ORDER BY COUNT(wineries.name) DESC , AVG(wines.ratings_average) DESC
LIMIT 5;