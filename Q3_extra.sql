SELECT DISTINCT  regions.name AS "region"
FROM wines
JOIN wineries
    ON wines.winery_id = wineries.id
JOIN regions
    ON wines.region_id = regions.id
JOIN countries
    ON regions.country_code = countries.code
WHERE wineries.name = "Quintarelli Giuseppe";
