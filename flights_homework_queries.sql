SELECT * FROM flights LIMIT 5;
SELECT origin, AVG(air_time) AS mean_air_time
FROM flights
GROUP BY origin;
SELECT origin, COUNT(*)/31.0 AS avg_flights_per_day
FROM flights
WHERE month = 1
GROUP BY origin;
SELECT origin, dest, COUNT(*) AS flight_count
FROM flights
GROUP BY origin, dest
ORDER BY origin, flight_count DESC;