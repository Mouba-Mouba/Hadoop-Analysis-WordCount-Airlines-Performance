-- Average Delay by Delay Type

SELECT 
    ROUND(AVG(CarrierDelay)) AS avg_carrier_delay,
    ROUND(AVG(WeatherDelay)) AS avg_weather_delay,
    ROUND(AVG(NASDelay)) AS avg_nas_delay,
    ROUND(AVG(SecurityDelay)) AS avg_security_delay,
    ROUND(AVG(LateAircraftDelay)) AS avg_late_aircraft_delay
FROM flight_answer
WHERE ArrDelay > 0; -- Consider only delayed flights


-- Total Contribution of Each Delay Type

SELECT 
    SUM(CarrierDelay) AS total_carrier_delay,
    SUM(WeatherDelay) AS total_weather_delay,
    SUM(NASDelay) AS total_nas_delay,
    SUM(SecurityDelay) AS total_security_delay,
    SUM(LateAircraftDelay) AS total_late_aircraft_delay
FROM flight_answer
WHERE ArrDelay > 0; -- Only consider delayed flights

-- Proportion of Delays Caused by Each Factor
SELECT 
    SUM(CarrierDelay) / SUM(ArrDelay) * 100 AS carrier_delay_percentage,
    SUM(WeatherDelay) / SUM(ArrDelay) * 100 AS weather_delay_percentage,
    SUM(NASDelay) / SUM(ArrDelay) * 100 AS nas_delay_percentage,
    SUM(SecurityDelay) / SUM(ArrDelay) * 100 AS security_delay_percentage,
    SUM(LateAircraftDelay) / SUM(ArrDelay) * 100 AS late_aircraft_delay_percentage
FROM flight_answer
WHERE ArrDelay > 0;


-- Identifying the Largest Contributor for Each Flight

SELECT 
    FlightNum,
    CASE 
        WHEN CarrierDelay = GREATEST(CarrierDelay, WeatherDelay, NASDelay, SecurityDelay, LateAircraftDelay) THEN 'Carrier Delay'
        WHEN WeatherDelay = GREATEST(CarrierDelay, WeatherDelay, NASDelay, SecurityDelay, LateAircraftDelay) THEN 'Weather Delay'
        WHEN NASDelay = GREATEST(CarrierDelay, WeatherDelay, NASDelay, SecurityDelay, LateAircraftDelay) THEN 'NAS Delay'
        WHEN SecurityDelay = GREATEST(CarrierDelay, WeatherDelay, NASDelay, SecurityDelay, LateAircraftDelay) THEN 'Security Delay'
        WHEN LateAircraftDelay = GREATEST(CarrierDelay, WeatherDelay, NASDelay, SecurityDelay, LateAircraftDelay) THEN 'Late Aircraft Delay'
    END AS major_delay_cause
FROM flight_answer
WHERE ArrDelay > 0;
