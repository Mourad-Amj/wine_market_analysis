--We would to give create a country leaderboard,
-- give us a visual that shows the average wine rating for each country.
-- Do the same for the vintages

SELECT countries.name as "country" , AVG(vintage_toplists_rankings.rank) AS "average ranking"
FROM vintages
JOIN vintage_toplists_rankings
ON vintages.id = vintage_toplists_rankings.vintage_id
JOIN toplists
ON vintage_toplists_rankings.top_list_id = toplists.id
JOIN countries
ON toplists.country_code =  countries.code
GROUP BY countries.name
ORDER BY AVG(vintage_toplists_rankings.rank);





