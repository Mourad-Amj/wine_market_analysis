--We would like to do a selection of wines that are easy to find all over the world. Find the top 3 most common grape all over the world and 
--for each grape, give us the the 5 best rated wines.

SELECT grapes.name, wines_count
FROM most_used_grapes_per_country
INNER JOIN grapes
ON most_used_grapes_per_country.grape_id = grapes.id
GROUP BY grape_id
ORDER BY wines_count DESC
LIMIT 3