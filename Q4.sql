

SELECT wines.name,wines.ratings_average, wines.ratings_count ,keywords_wine.group_name , keywords_wine.keyword_type , keywords.name
FROM wines
JOIN keywords_wine
ON wines.id = keywords_wine.wine_id
JOIN keywords
ON keywords_wine.keyword_id = keywords.id
WHERE keywords_wine.count > 10 
    AND keywords_wine.keyword_type = "primary"
    AND keywords.name IN ('coffee','toast' ,'green apple', 'cream', 'citrus');

