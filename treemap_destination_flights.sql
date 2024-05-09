-- Prepares data for the treemap visualization in Power BI
SELECT
    f.dest,
    COUNT(DISTINCT f.flight) AS distinct_flights
FROM
    flights f
GROUP BY
    f.dest;
