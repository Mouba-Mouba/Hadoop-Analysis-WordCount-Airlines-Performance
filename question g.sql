SELECT 
    FlightNum, 
    TailNum,
    COUNT(*) AS num_delays,  -- Count how often this flight was delayed
    ROUND(AVG(ArrDelay)) AS avg_arrival_delay,  -- Average delay for this flight
    MAX(ArrDelay) AS max_arrival_delay  -- Maximum delay experienced
FROM flight_answer
WHERE ArrDelay > 0  -- Only consider delayed flights
GROUP BY FlightNum, TailNum
ORDER BY num_delays DESC, max_arrival_delay DESC
LIMIT 1;  -- Get the most delayed flight
