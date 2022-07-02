list_sql=[]
for i in range(1,49):
    i_text = str(i)
    sql = "AVG(T"+i_text+")"
    list_sql.append(sql)

print("+".join(list_sql))
