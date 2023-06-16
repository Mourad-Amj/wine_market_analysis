SELECT id, name, acidity, fizziness, intensity, sweetness, tannin, ratings_average, user_structure_count
FROM wines
WHERE name NOT LIKE '%Cabernet Sauvignon%' 
    AND acidity BETWEEN 3 AND 4.3
    AND intensity BETWEEN 3.5 AND 5
    AND sweetness BETWEEN 1.4 AND 2
    AND tannin BETWEEN 3 AND 3.8
    AND ratings_average > 4.6
ORDER BY user_structure_count DESC
LIMIT 5;