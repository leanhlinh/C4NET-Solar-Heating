list_sql=[]
for i in range(1,49):
    i_text = str(i).rjust(2,'0')
    sql = "AVG(MTR_REG_ACT_ENERGY_"+i_text+"_KWH)"
    list_sql.append(sql)

print("+".join(list_sql))
