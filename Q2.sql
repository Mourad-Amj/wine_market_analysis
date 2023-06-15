--We have a marketing budget for this year, which country should we prioritise and why?

SELECT name AS 'Country', users_count AS 'Users Count', wineries_count AS 'Wineries Count'
FROM countries
ORDER BY users_count DESC,  wineries_count DESC
LIMIT 10;

