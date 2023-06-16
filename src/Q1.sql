--We want to highlight 10 wines to increase our sales, which ones should we choose and why?
--https://www.sciencedirect.com/science/article/pii/S2212977415000137
--ratings_average , ratings_count , name ,price_euros
SELECT  name AS 'wine' , ratings_average AS 'average rating' 
FROM wines
WHERE wines.ratings_average > 4.6 and wines.ratings_count > 8000
ORDER BY ratings_count DESC
LIMIT 10;

