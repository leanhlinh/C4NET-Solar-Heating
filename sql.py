sql_big=[]
for i in range(1,49):
    i_text = str(i).rjust(2,'0')
    sql = """SELECT Channel, '"""+i_text+"""h' AS hour,
    AVG(MTR_REG_ACT_ENERGY_"""+i_text+"""_KWH) AS AVG_KWH
    FROM jemena_complete_area_div
    GROUP BY CHANNEL, hour
    UNION ALL"""
    sql_big.append(sql)

print("\n".join(sql_big))
    
