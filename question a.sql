-- Best Time of Day:
SELECT 
    FLOOR(DepTime) AS hour,  -- Extract the hour part from float
    ROUND(AVG(ArrDelay)) AS avg_arr_delay  -- Round average delay to nearest integer
FROM flight_answer
GROUP BY hour
ORDER BY avg_arr_delay ASC;  -- Ascending to find the minimum delay



-- Best Day of Week:
SELECT 
    DayOfWeek, 
    ROUND(AVG(ArrDelay)) AS avg_arr_delay
FROM flight_answer
GROUP BY DayOfWeek
ORDER BY avg_arr_delay ASC;  -- Ascending to find the minimum delay


-- Best Time of Year:
SELECT 
    Month, 
    ROUND(AVG(ArrDelay)) AS avg_arr_delay
FROM flight_answer
GROUP BY Month
ORDER BY avg_arr_delay ASC;  -- Ascending to find the minimum delay

