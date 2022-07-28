import mysql.connector
import os


print(os.getenv("DB_HOST"))


mydb = mysql.connector.connect(
    host=os.getenv("DB_HOST"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
)
mycursor = mydb.cursor()


mycursor.execute("SHOW DATABASES")

for x in mycursor:
    if (x[0].decode("utf-8") == "todo_app"):
        print("found")
