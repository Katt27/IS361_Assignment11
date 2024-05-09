-- Fetches data for the scatter chart related to flight models
SELECT
    a.model,
    COUNT(DISTINCT f.flight) AS distinct_flights,
    AVG(f.distance) AS avg_distance,
    AVG(f.air_time) AS avg_air_time
FROM
    flights f
JOIN
    aircrafts a ON f.aircraft_id = a.id
GROUP BY
    a.model;
