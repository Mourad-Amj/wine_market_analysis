SELECT wines.name AS wine, GROUP_CONCAT(keywords.name) AS keywords, keywords_wine.group_name, wines.ratings_average
FROM wines
JOIN keywords_wine
ON wines.id = keywords_wine.wine_id
JOIN keywords
ON keywords_wine.keyword_id = keywords.id
WHERE keywords_wine.count > 10 
    AND keywords_wine.keyword_type = "primary"
    AND keywords.name IN ('coffee','toast' ,'green apple', 'cream', 'citrus')
GROUP BY wines.name
HAVING COUNT(DISTINCT keywords.name) = 5
ORDER BY wines.ratings_average DESC;