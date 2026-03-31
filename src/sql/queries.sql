-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
SELECT * FROM observations
LIMIT 10;

-- MISSION 2
SELECT DISTINCT region_id FROM observations;


-- MISSION 3
SELECT COUNT(DISTINCT species_id) AS total_species FROM observations;


-- MISSION 4
ELECT * FROM observations
WHERE region_id = 2;


-- MISSION 5
ELECT * FROM observations
WHERE observation_date = '1998-08-08';


-- MISSION 6
ELECT region_id, COUNT(*) AS total_observations
FROM observations
GROUP BY region_id
ORDER BY total_observations DESC;


-- MISSION 7
SELECT species_id, COUNT(*) AS total_records
FROM observations
GROUP BY species_id
ORDER BY total_records DESC
LIMIT 5;


-- MISSION 8
SELECT species_id, COUNT(*) AS observation_count
FROM observations
GROUP BY species_id
HAVING observation_count < 5
ORDER BY observation_count ASC;

-- MISSION 9
SELECT observer, COUNT(*) AS total
FROM observations
GROUP BY observer
ORDER BY total DESC;

--MISSION 10
SELECT observations.id, regions.name AS region_name, observations.observation_date
FROM observations
JOIN regions ON observations.region_id = regions.id;

--MISSION 11
SELECT observations.id, species.scientific_name
FROM observations
JOIN species ON observations.species_id = species.id;

--MISSION 12
SELECT regions.name AS region, species.scientific_name, COUNT(*) AS total
FROM observations
JOIN species ON observations.species_id = species.id
JOIN regions ON observations.region_id = regions.id
GROUP BY region, species.scientific_name
ORDER BY region, total DESC;

--MISSION 13
NSERT INTO observations (
    species_id, region_id, observer, observation_date, count
) VALUES (
    3, 2, 'analyst_test', '2024-12-01', 1
);


