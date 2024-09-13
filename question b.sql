-- Analyze Delays by Tail Number
SELECT 
    TailNum,
    ROUND(AVG(ArrDelay)) AS avg_arr_delay
FROM flight_answer
WHERE ArrDelay IS NOT NULL
GROUP BY TailNum
ORDER BY avg_arr_delay DESC;


-- Analyze Delays by Carrier or Flight Number

-- Delays by UniqueCarrier
SELECT 
    UniqueCarrier,
    ROUND(AVG(ArrDelay)) AS avg_arr_delay
FROM flight_answer
WHERE ArrDelay IS NOT NULL
GROUP BY UniqueCarrier
ORDER BY avg_arr_delay DESC;


-- Delays by FlightNum
SELECT 
    FlightNum,
    ROUND(AVG(ArrDelay)) AS avg_arr_delay
FROM flight_answer
WHERE ArrDelay IS NOT NULL
GROUP BY FlightNum
ORDER BY avg_arr_delay DESC;
