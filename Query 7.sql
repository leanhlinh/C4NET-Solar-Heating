CREATE TABLE australian_postcodes_1 AS 
(
SELECT postcode, MIN(locality) FROM australian_postcodes
GROUP BY postcode
)