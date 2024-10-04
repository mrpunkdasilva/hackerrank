SELECT 
    COUNT(CITY) - COUNT(DISTINCT CITY)
FROM
    STATION
WHERE
    (LAT_N IS NOT NULL)
        AND (LONG_W IS NOT NULL)
;
