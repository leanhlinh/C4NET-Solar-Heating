CREATE table channel_area_weekdayname_avg_of_time as
(
SELECT CHANNEL, AREA, DAYNAME(read_date) AS WEEKDAY,
AVG(MTR_REG_ACT_ENERGY_01_KWH)+AVG(MTR_REG_ACT_ENERGY_02_KWH)+AVG(MTR_REG_ACT_ENERGY_03_KWH)+AVG(MTR_REG_ACT_ENERGY_04_KWH)+AVG(MTR_REG_ACT_ENERGY_05_KWH)+AVG(MTR_REG_ACT_ENERGY_06_KWH)+AVG(MTR_REG_ACT_ENERGY_07_KWH)+AVG(MTR_REG_ACT_ENERGY_08_KWH)+AVG(MTR_REG_ACT_ENERGY_09_KWH)+AVG(MTR_REG_ACT_ENERGY_10_KWH)+AVG(MTR_REG_ACT_ENERGY_11_KWH)+AVG(MTR_REG_ACT_ENERGY_12_KWH)+AVG(MTR_REG_ACT_ENERGY_13_KWH)+AVG(MTR_REG_ACT_ENERGY_14_KWH)+AVG(MTR_REG_ACT_ENERGY_15_KWH)+AVG(MTR_REG_ACT_ENERGY_16_KWH)+AVG(MTR_REG_ACT_ENERGY_17_KWH)+AVG(MTR_REG_ACT_ENERGY_18_KWH)+AVG(MTR_REG_ACT_ENERGY_19_KWH)+AVG(MTR_REG_ACT_ENERGY_20_KWH)+AVG(MTR_REG_ACT_ENERGY_21_KWH)+AVG(MTR_REG_ACT_ENERGY_22_KWH)+AVG(MTR_REG_ACT_ENERGY_23_KWH)+AVG(MTR_REG_ACT_ENERGY_24_KWH)+AVG(MTR_REG_ACT_ENERGY_25_KWH)+AVG(MTR_REG_ACT_ENERGY_26_KWH)+AVG(MTR_REG_ACT_ENERGY_27_KWH)+AVG(MTR_REG_ACT_ENERGY_28_KWH)+AVG(MTR_REG_ACT_ENERGY_29_KWH)+AVG(MTR_REG_ACT_ENERGY_30_KWH)+AVG(MTR_REG_ACT_ENERGY_31_KWH)+AVG(MTR_REG_ACT_ENERGY_32_KWH)+AVG(MTR_REG_ACT_ENERGY_33_KWH)+AVG(MTR_REG_ACT_ENERGY_34_KWH)+AVG(MTR_REG_ACT_ENERGY_35_KWH)+AVG(MTR_REG_ACT_ENERGY_36_KWH)+AVG(MTR_REG_ACT_ENERGY_37_KWH)+AVG(MTR_REG_ACT_ENERGY_38_KWH)+AVG(MTR_REG_ACT_ENERGY_39_KWH)+AVG(MTR_REG_ACT_ENERGY_40_KWH)+AVG(MTR_REG_ACT_ENERGY_41_KWH)+AVG(MTR_REG_ACT_ENERGY_42_KWH)+AVG(MTR_REG_ACT_ENERGY_43_KWH)+AVG(MTR_REG_ACT_ENERGY_44_KWH)+AVG(MTR_REG_ACT_ENERGY_45_KWH)+AVG(MTR_REG_ACT_ENERGY_46_KWH)+AVG(MTR_REG_ACT_ENERGY_47_KWH)+AVG(MTR_REG_ACT_ENERGY_48_KWH)
AS Energy_day_avg 
FROM jemena_indexed
GROUP BY CHANNEL, AREA, WEEKDAY
)
