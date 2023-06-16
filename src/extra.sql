SELECT wines.name AS 'wine' , regions.name  AS 'region', countries.name  AS 'country' , wines.ratings_average AS 'average rating' , wines.acidity ,wines.fizziness , wines.intensity ,wines.sweetness , wines.tannin
FROM wines
JOIN regions
on wines.region_id = regions.id
JOIN countries
on regions.country_code = countries.code
WHERE  countries.name  IN ('Italie','France','Espagne','Portugal','Hongrie','Allemagne','Moldavie','Grèce','Roumanie','Croatie','Suisse')
    AND wines.ratings_average > 4.4 and wines.ratings_count > 3000;