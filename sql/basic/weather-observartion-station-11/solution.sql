SELECT 
    DISTINCT  CITY
FROM
    STATION
WHERE 
    (LAT_N IS NOT NULL)  AND
    (LONG_W IS NOT NULL) AND 
    LOWER(SUBSTRING(CITY, 1, 1)) NOT IN ('a', 'e', 'i', 'o', 'u') OR
    LOWER(SUBSTRING(CITY, -1)) NOT IN ('a', 'e', 'i', 'o', 'u')
ORDER BY CITY
;