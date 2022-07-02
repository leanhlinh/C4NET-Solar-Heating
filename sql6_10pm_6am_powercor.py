list_sql=[]
for i in [45, 46, 47, 48, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]:
    i_text = str(i)
    sql = "AVG(T"+i_text+") as T"+i_text+""
    list_sql.append(sql)

print(",".join(list_sql))

