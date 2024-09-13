-- Worst Time of Day
SELECT 
    FLOOR(DepTime) AS hour,  -- Extract the hour from the float time
    ROUND(AVG(ArrDelay)) AS avg_arrival_delay
FROM flight_answer
WHERE ArrDelay IS NOT NULL  -- Exclude null delays
GROUP BY hour
ORDER BY avg_arrival_delay DESC;


-- Worst Day of the Week
SELECT 
    DayOfWeek, 
    ROUND(AVG(ArrDelay)) AS avg_arrival_delay
FROM flight_answer
WHERE ArrDelay IS NOT NULL
GROUP BY DayOfWeek
ORDER BY avg_arrival_delay DESC;


-- Worst Month of the Year
SELECT 
    Month, 
    ROUND(AVG(ArrDelay)) AS avg_arrival_delay
FROM flight_answer
WHERE ArrDelay IS NOT NULL
GROUP BY Month
ORDER BY avg_arrival_delay DESC;
