CREATE TABLE report_e2_10pm_6am AS

(
SELECT channel, postcode, '22:00' AS HOUR , T45 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '22:30' AS HOUR , T46 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '23:00' AS HOUR , T47 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '23:30' AS HOUR , T48 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '0:00' AS HOUR , T1 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '0:30' AS HOUR , T2 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '1:00' AS HOUR , T3 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '1:30' AS HOUR , T4 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '2:00' AS HOUR , T5 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '2:30' AS HOUR , T6 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '3:00' AS HOUR , T7 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '3:30' AS HOUR , T8 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '4:00' AS HOUR , T9 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '4:30' AS HOUR , T10 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '5:00' AS HOUR , T11 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
UNION ALL
SELECT channel, postcode, '5:30' AS HOUR , T12 AS ENERGY_AVG     FROM power_core_e2_10pm_6am     GROUP BY channel, postcode 
)