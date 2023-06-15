--We would like to do a selection of wines that are easy to find all over the world. Find the top 3 most common grape all over the world and 
--for each grape, give us the the 5 best rated wines.

SELECT wines.name, wines.ratings_average,wines.ratings_count,regions.country_code ,grapes.id, SUM(grapes.id),grapes.name 
FROM wines
JOIN regions
ON wines.region_id = regions.id
JOIN most_used_grapes_per_country
ON regions.country_code = most_used_grapes_per_country.country_code
JOIN grapes
ON most_used_grapes_per_country.grape_id = grapes.id