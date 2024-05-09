-- Provides data for the bar chart showing counts of flights by manufacturer
SELECT
    a.manufacturer,
    COUNT(DISTINCT f.flight) AS distinct_flights
FROM
    flights f
JOIN
    aircrafts a ON f.aircraft_id = a.id
GROUP BY
    a.manufacturer;
