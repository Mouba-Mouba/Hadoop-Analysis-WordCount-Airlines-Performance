CREATE TABLE flight_data (
    Year INT,
    Month INT,
    DayofMonth INT,
    DayOfWeek INT,
    DepTime FLOAT,
    CRSDepTime INT,
    ArrTime FLOAT,
    CRSArrTime INT,
    UniqueCarrier VARCHAR(10),
    FlightNum INT,
    TailNum VARCHAR(10),
    ActualElapsedTime FLOAT,
    CRSElapsedTime FLOAT,
    AirTime FLOAT,
    ArrDelay FLOAT,
    DepDelay FLOAT,
    Origin VARCHAR(10),
    Dest VARCHAR(10),
    Distance INT,
    TaxiIn FLOAT,
    TaxiOut FLOAT,
    Cancelled INT,
    CarrierDelay FLOAT,
    WeatherDelay FLOAT,
    NASDelay FLOAT,
    SecurityDelay FLOAT,
    LateAircraftDelay FLOAT,
    Diverted INT
);


-- Step 1: Create the flight_answer table with the same structure as flight_data
CREATE TABLE flight_answer (
    Year INT,
    Month INT,
    DayofMonth INT,
    DayOfWeek INT,
    DepTime FLOAT,
    CRSDepTime INT,
    ArrTime FLOAT,
    CRSArrTime INT,
    UniqueCarrier VARCHAR(10),
    FlightNum INT,
    TailNum VARCHAR(10),
    ActualElapsedTime FLOAT,
    CRSElapsedTime FLOAT,
    AirTime FLOAT,
    ArrDelay FLOAT,
    DepDelay FLOAT,
    Origin VARCHAR(10),
    Dest VARCHAR(10),
    Distance INT,
    TaxiIn FLOAT,
    TaxiOut FLOAT,
    Cancelled INT,
    CarrierDelay FLOAT,
    WeatherDelay FLOAT,
    NASDelay FLOAT,
    SecurityDelay FLOAT,
    LateAircraftDelay FLOAT,
    Diverted INT
);

-- Step 2: Insert data into flight_answer from flight_data, excluding rows with null or empty cells
INSERT INTO flight_answer
SELECT *
FROM flight_data
WHERE
    Year IS NOT NULL AND
    Month IS NOT NULL AND
    DayofMonth IS NOT NULL AND
    DayOfWeek IS NOT NULL AND
    DepTime IS NOT NULL AND
    CRSDepTime IS NOT NULL AND
    ArrTime IS NOT NULL AND
    CRSArrTime IS NOT NULL AND
    UniqueCarrier IS NOT NULL AND
    FlightNum IS NOT NULL AND
    TailNum IS NOT NULL AND
    ActualElapsedTime IS NOT NULL AND
    CRSElapsedTime IS NOT NULL AND
    AirTime IS NOT NULL AND
    ArrDelay IS NOT NULL AND
    DepDelay IS NOT NULL AND
    Origin IS NOT NULL AND
    Dest IS NOT NULL AND
    Distance IS NOT NULL AND
    TaxiIn IS NOT NULL AND
    TaxiOut IS NOT NULL AND
    Cancelled IS NOT NULL AND
    CarrierDelay IS NOT NULL AND
    WeatherDelay IS NOT NULL AND
    NASDelay IS NOT NULL AND
    SecurityDelay IS NOT NULL AND
    LateAircraftDelay IS NOT NULL AND
    Diverted IS NOT NULL;
