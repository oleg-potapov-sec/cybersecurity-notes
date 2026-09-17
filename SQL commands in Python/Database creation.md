# Python Backend & SQL Databases

## PART 1: Database Creation (The Blueprint Script)
*Used one time to build a fresh database from a `.sql` file.*

```python
import sqlite3

# 1. Read the pure SQL blueprint
with open('database.sql', 'r') as file:
    sql_script = file.read()

# 2. Connect (creates the file if it doesn't exist)
conn = sqlite3.connect('users.db')
cursor = conn.cursor()

# 3. Execute the entire blueprint script
cursor.executescript(sql_script)

# 4. Save and close
conn.commit()
conn.close()
