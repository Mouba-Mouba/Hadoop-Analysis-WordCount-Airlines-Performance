-- Correlation Between Weather Delays and Arrival Delays

SELECT 
    CORR(WeatherDelay, ArrDelay) AS weather_arrdelay_correlation
FROM flight_answer
WHERE WeatherDelay IS NOT NULL AND ArrDelay IS NOT NULL;


-- Percentage of Delays Due to Weather

SELECT 
    COUNT(*) AS total_flights,
    SUM(CASE WHEN WeatherDelay > 0 THEN 1 ELSE 0 END) AS flights_weather_delay,
    SUM(CASE WHEN ArrDelay > 0 THEN 1 ELSE 0 END) AS total_delayed_flights
FROM flight_answer;


-- Regression Analysis:
SELECT 
    WeatherDelay,
    ROUND(AVG(ArrDelay)) AS avg_arr_delay
FROM flight_answer
WHERE WeatherDelay IS NOT NULL AND ArrDelay IS NOT NULL
GROUP BY WeatherDelay
ORDER BY WeatherDelay ASC;
