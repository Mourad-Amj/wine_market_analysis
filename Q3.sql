--We would like to give a price to the best winery, which one should we choose and why?
SELECT wineries.name, COUNT(wineries.name), wines.ratings_average , wines.ratings_count
FROM wines
INNER JOIN wineries
ON wines.winery_id = wineries.id
WHERE wines.ratings_average > 4.6 and wines.ratings_count > 1000
GROUP BY wineries.name
ORDER BY COUNT(wineries.name) DESC
