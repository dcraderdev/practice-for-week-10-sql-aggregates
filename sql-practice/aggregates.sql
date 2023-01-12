-- SELECT * FROM cats;
-- SELECT * FROM toys;

SELECT cats.name, toys.name
FROM cats
JOIN toys
ON cats.id = toys.cat_id;



-- SELECT MIN(birth_year) 
-- AS birth_year
-- FROM cats;

-- SELECT MAX(birth_year) 
-- AS birth_year
-- FROM cats;

SELECT (SELECT MIN(birth_year) FROM cats) as min_birth_year, 
       (SELECT MAX(birth_year) FROM cats) as max_birth_year;

-- SELECT COUNT(*) AS count
-- FROM cats
-- WHERE department = 'Sales'


SELECT cats.name, COUNT(toys.cat_id) AS toy_count
FROM cats
JOIN toys
ON cats.id = toys.cat_id
GROUP BY cats.id
-- optional 2 or more clause
HAVING COUNT(toys.cat_id) >= 2;