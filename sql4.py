list_sql=[]
for i in range(1,49):
    i_text = str(i)
    sql = "\nSELECT channel1, 'T"+i_text+"' AS HOUR , `AVG(T"+i_text+")` FROM REPORT1 \n"
    list_sql.append(sql)

print("UNION ALL".join(list_sql))
