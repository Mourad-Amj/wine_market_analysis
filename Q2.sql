--We have a marketing budget for this year, which country should we prioritise and why?

SELECT name , regions_count,wines_count ,users_count,wineries_count
FROM countries
ORDER BY  users_count ,wineries_count DESC
limit 10;

