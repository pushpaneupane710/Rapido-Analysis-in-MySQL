CREATE DATABASE if not exists rapido_analysis;

USE rapido_analysis;


SELECT DATABASE();

-- Verify the import
SHOW TABLES;
SELECT * FROM users LIMIT 5;
SELECT * FROM rides LIMIT 5;

-- Check the tables
USE rapido_analysis;
SHOW TABLES;

-- Check the number of rows in both tables
SELECT COUNT(*) AS total_users
FROM users;
SELECT COUNT(*) AS total_rides
FROM rides;

-- Check the column names
DESCRIBE users;

DESCRIBE rides;

-- Count the total rides

USE rapido_analysis;

SELECT COUNT(*) AS total_rides
FROM rides;

-- Analyse rides by vehicle type
SELECT
    vehicle_type,
    COUNT(*) AS total_rides
FROM rides
GROUP BY vehicle_type
ORDER BY total_rides DESC;


-- Calculate the average ride distance
SELECT
    ROUND(AVG(distance_km), 2) AS avg_distance_km,
    MIN(distance_km) AS shortest_distance_km,
    MAX(distance_km) AS longest_distance_km
FROM rides;


