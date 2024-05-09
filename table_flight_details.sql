SELECT
    f.air_time,
    f.arr_time,
    f.dest,
    f.distance,
    f.flight,
    a.model,
    f.origin
FROM
    flights f
JOIN
    aircrafts a ON f.aircraft_id = a.id
WHERE
    f.flight IS NOT NULL;

