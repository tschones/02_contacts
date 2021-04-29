import sqlite3

# create (or if exists) connect to database
con = sqlite3.connect('sql_stuff\calendar.sqlite')

# create a cursor
cur = con.cursor()

with open("sql_stuff\initial.sql", "r") as file:
    statements = file.read()

statements = statements.split(";")
for statement in statements:
    cur.execute(statement)

# save (commit) the changes
con.commit()

# close the connection
con.close()