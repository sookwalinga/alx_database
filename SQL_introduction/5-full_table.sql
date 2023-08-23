-- This SQL script prints the full description of the table
-- first_table from the specified database.

-- The user is prompted to enter the password for authentication
-- The query uses the information_schema database to retrieve
-- table information without using DESCRIBE or EXPLAIN
SELECT TABLE_NAME, CREATE_TABLE
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'hbtn_test_db_4' AND TABLE_NAME = 'first_table';
