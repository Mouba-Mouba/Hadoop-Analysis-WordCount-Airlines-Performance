-- Flight Count Over Time by Year

SELECT 
    Year,
    COUNT(*) AS flight_count
FROM flight_answer
GROUP BY Year
ORDER BY Year ASC;


-- Flight Count by Origin-Destination Pairs Over Time

SELECT 
    Year,
    Origin,
    Dest,
    COUNT(*) AS flight_count
FROM flight_answer
GROUP BY Year, Origin, Dest
ORDER BY Year ASC, flight_count DESC;


-- Flight Count by Month to See Seasonal Trends
SELECT 
    Year,
    Month,
    Origin,
    Dest,
    COUNT(*) AS flight_count
FROM flight_answer
GROUP BY Year, Month, Origin, Dest
ORDER BY Year ASC, Month ASC;
