-- 1. CREATE (Setting up the table structure)
CREATE TABLE Users (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    username TEXT NOT NULL,
    password TEXT NOT NULL
);

-- 2. INSERT (Adding data to the table)
INSERT INTO Users (username, password) 
VALUES ('Amanda', 'amanda123');

-- 3. SELECT (Reading/Searching for data)
SELECT * FROM Users;                                    -- Select all columns & rows
SELECT * FROM Users WHERE username = 'Amanda';          -- Search by one condition
SELECT * FROM Users WHERE username = '?' AND password = '?'; -- Using parameter markers

-- 4. UPDATE (Changing existing data)
UPDATE Users 
SET password = 'newpassword456' 
WHERE username = 'Amanda';

-- 5. DELETE (Removing a row)
DELETE FROM Users 
WHERE username = 'Amanda';

-- 6. COMMENTS (Crucial for SQL Injection)
-- Anything after two hyphens is ignored by the database.
SELECT * FROM Users WHERE username = 'Amanda' -- AND password = 'password'
