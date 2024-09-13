-- Check if Delay Columns Contain Nulls
SELECT 
    COUNT(*) AS total_flights,
    COUNT(CarrierDelay) AS carrier_delay_count,
    COUNT(WeatherDelay) AS weather_delay_count,
    COUNT(NASDelay) AS nas_delay_count,
    COUNT(SecurityDelay) AS security_delay_count,
    COUNT(LateAircraftDelay) AS late_aircraft_delay_count
FROM flight_answer;

-- Use Null Handling in Queries
SELECT 
    AVG(COALESCE(CarrierDelay, 0)) AS avg_carrier_delay,
    AVG(COALESCE(WeatherDelay, 0)) AS avg_weather_delay,
    AVG(COALESCE(NASDelay, 0)) AS avg_nas_delay,
    AVG(COALESCE(SecurityDelay, 0)) AS avg_security_delay,
    AVG(COALESCE(LateAircraftDelay, 0)) AS avg_late_aircraft_delay
FROM flight_answer
WHERE Cancelled = 1;  -- Only canceled flights

-- Analyze Cancellation Trends Over Time
SELECT 
    Year, 
    Month, 
    COUNT(*) AS num_cancellations
FROM flight_answer
WHERE Cancelled = 1
GROUP BY Year, Month
ORDER BY Year, Month;

-- Look for Potential Data Issues
SELECT 
    COUNT(*) AS total_flights,
    SUM(Cancelled) AS canceled_flights
FROM flight_answer;


/* Since there are no canceled flights in your dataset (canceled_flights = 0),
it's clear that there are no records with cancellations to analyze for the question 
about the major factor causing flight cancellations. */