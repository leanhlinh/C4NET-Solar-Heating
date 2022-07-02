CREATE TABLE Report4 
(
SELECT r.*, p.`MIN(locality)` FROM report_3 r
LEFT JOIN australian_postcodes_1 p
ON r.postcode= p.postcode
)