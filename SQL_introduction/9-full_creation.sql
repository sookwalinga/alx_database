-- This SQL script creates a table called second_table in the specified database and inserts multiple rows.

-- The user is prompted to enter the password for authentication
-- If the table already exists, the query will not fail due to the IF NOT EXISTS clause
CREATE TABLE IF NOT EXISTS hbtn_test_db_9.second_table (
    id INT,
    name VARCHAR(256),
    score INT
);

-- Insert multiple rows into the second_table
INSERT INTO hbtn_test_db_9.second_table (id, name, score)
VALUES (1, 'John', 10),
       (2, 'Alex', 3),
       (3, 'Bob', 14),
       (4, 'George', 8);
