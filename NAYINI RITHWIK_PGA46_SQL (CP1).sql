
USE Cp1;


USE Cp1;
SELECT TOP 100 * FROM dbo.Uber_data;


1)SELECT COUNT(*) AS TotalRides
FROM dbo.Uber_data;

USE cp1;

2)SELECT [Pickup Location], COUNT(*) AS RideCount
FROM dbo.Uber_data
GROUP BY [Pickup Location]
ORDER BY RideCount DESC;


3)SELECT [Vehicle Type], 
       COUNT(*) AS TotalRides,
       AVG([Ride Distance]) AS AvgDistance
FROM dbo.Uber_data
WHERE [Ride Distance] IS NOT NULL
GROUP BY [Vehicle Type]
ORDER BY AvgDistance DESC;


4)SELECT [Payment Method], 
       SUM([Booking Value]) AS TotalRevenue
FROM dbo.Uber_data
WHERE [Booking Value] IS NOT NULL
GROUP BY [Payment Method]
ORDER BY TotalRevenue DESC;


5)SELECT [Pickup Location], [Drop Location], COUNT(*) AS RideCount
FROM dbo.Uber_data
GROUP BY [Pickup Location], [Drop Location]
ORDER BY RideCount DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

6)SELECT
    [Booking Status],
    COUNT(*) AS CountRides
FROM
    dbo.Uber_data
GROUP BY
    [Booking Status];

7)SELECT
    CAST(Date AS DATE) AS RideDate,
    SUM([Booking Value]) AS DailyRevenue
FROM
    dbo.Uber_data
WHERE
    [Booking Value] IS NOT NULL
GROUP BY
    CAST(Date AS DATE)
ORDER BY
    RideDate;








