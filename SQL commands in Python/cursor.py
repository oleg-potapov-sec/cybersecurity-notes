Python
import sqlite3

# Step 1: Connect to the database
conn = sqlite3.connect('users.db')

# Step 2: Create the Cursor ("The Waiter")
cursor = conn.cursor()

# Step 3: Write the SQL command 
# Use '?' as Parameter Markers to leave blank spots for user input
query = "SELECT * FROM Users WHERE username = ? AND password = ?"

# Step 4: Execute ("Handing the order to the kitchen")
# Pass the query and the variables as TWO SEPARATE items to prevent SQL Injection
user_input = ('Amanda', 'amanda123')
cursor.execute(query, user_input) 

# Step 5: Fetch Data (Only used for SELECT queries)
user = cursor.fetchone()      # Grabs one row
# all_users = cursor.fetchall() # Grabs all matching rows

# Step 6: Commit changes (Only used for INSERT, UPDATE, DELETE)
# conn.commit()
