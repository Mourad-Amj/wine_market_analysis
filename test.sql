SELECT *
FROM keywords_wine
INNER JOIN keywords
ON keywords_wine.keyword_id = keywords.id




SELECT name.wines,ratings_average.wines , ratings_count.wines ,keywords_wine.group_name , keywords_wine.keyword_type , keywords.name , COUNT(keywords_wine.group_name) 
FROM wines
INNER JOIN keywords_wine
ON wines.id = keywords_wine.wine_id
JOIN keywords
ON keywords_wine.keyword_id = keywords.id
WHERE keywords_wine.count > 10 AND keywords_wine.keyword_type IN ('primary') AND keywords.name IN ('coffee','toast' ,'green apple', 'cream', 'citrus')

GROUP BY keywords_wine.group_name
ORDER BY COUNT(keywords_wine.group_name) DESC;