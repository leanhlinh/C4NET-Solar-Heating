SELECT * FROM power_core_new_1 WHERE read_date="2017-05-20"
SELECT DISTINCT channel FROM jemena_complete_area_div

SELECT * FROM 
(SELECT CHANNEL, read_date, postcode, nmi, c4net_id, COUNT(*) AS count FROM jemena_complete_area_div
GROUP BY CHANNEL, read_date,postcode, nmi, c4net_id) AS c
WHERE c.COUNT > 1

SELECT * FROM jemena_complete_area_div
WHERE read_date='2020-01-01 00:00:00' AND postcode='3043' AND CHANNEL='E1' AND c4net_id='868600'
CREATE TABLE power_core_channel_e2 AS
(
SELECT * FROM power_core_new_1 WHERE CHANNEL='E2'
)

SELECT * FROM 
(
SELECT CHANNEL, read_date, postcode, nmi, COUNT(*) AS count FROM power_core_new_1
GROUP BY CHANNEL, read_date,postcode, nmi) AS c
WHERE c.COUNT > 1

SELECT * FROM power_core_new_1
WHERE read_date='2018-07-25' AND postcode='3206' AND CHANNEL='E1' AND nmi='74492299501'

CREATE TABLE power_core_e2_10pm_6am AS
(
SELECT nmi, read_date, CHANNEL, postcode, AVG(T45) as T45,AVG(T46) as T46,AVG(T47) as T47,AVG(T48) as T48,AVG(T1) as T1,AVG(T2) as T2,AVG(T3) as T3,AVG(T4) as T4,AVG(T5) as T5,AVG(T6) as T6,AVG(T7) as T7,AVG(T8) as T8,AVG(T9) as T9,AVG(T10) as T10,AVG(T11) as T11,AVG(T12) as T12 
FROM power_core_channel_e2
GROUP BY nmi, read_date, CHANNEL, postcode
)

