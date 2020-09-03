import os
import sqlite3

DEFAULT_PATH = os.path.join(os.getcwd(),'jobs.db')

def db_connect(db_path=DEFAULT_PATH):
    connection = sqlite3.connect(db_path)
    cursor = connection.cursor()
    return cursor

cur = db_connect(DEFAULT_PATH)

schema = "SELECT name \
    FROM sqlite_master \
    WHERE type = 'table';"
print("### table info ###")    
print(cur.execute(schema).fetchall())

pragma = "PRAGMA table_info ('recent_grads')"
print(cur.execute(pragma).fetchall())

all_grads = "SELECT * \
    FROM recent_grads"
print("### recent grads ###")
print(cur.execute(all_grads).fetchall())

limit_grads = "SELECT * \
    FROM recent_grads \
    LIMIT 5"
print(cur.execute(limit_grads).fetchall())

major_and_sharewomen = "SELECT Major, ShareWomen \
    FROM recent_grads \
    LIMIT 5"
print("### women grads ###")
print(cur.execute(major_and_sharewomen).fetchall())

major_and_sharewomen = "SELECT Major, ShareWomen \
    FROM recent_grads \
    WHERE ShareWomen < 0.5"
print(cur.execute(major_and_sharewomen).fetchall())

eng_women = "SELECT Major \
    FROM recent_grads \
    WHERE Major_category = 'Engineering' \
    AND ShareWomen > 0.5"
print(cur.execute(eng_women).fetchall())

employed_women_majors = "SELECT Major, ShareWomen, Unemployment_rate \
    FROM recent_grads \
    WHERE ShareWomen > 0.3 AND Unemployment_rate < 0.1 \
    ORDER BY Unemployment_rate DESC"
print(cur.execute(employed_women_majors).fetchall())



