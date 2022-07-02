list_sql=[]
for i in [45, 46, 47, 48, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]:
    i_text = str(i)
    sql = "\nSELECT channel, postcode, 'T"+i_text+"' AS HOUR , T"+i_text+" AS ENERGY_AVG \
    FROM power_core_e2_10pm_6am \
    GROUP BY channel, postcode \n"
    list_sql.append(sql)

print("UNION ALL".join(list_sql))
