-- This SQL script creates a table called first_table in the specified database.

-- The database name is passed as an argument to the mysql command
-- It is assumed that the MySQL client command can accept arguments for the database name
-- The user is prompted to enter the password for authentication
-- Replace "database_name" with the actual name of the database you want to create the table in
-- If the table already exists, the query will not fail due to the IF NOT EXISTS clause
CREATE TABLE IF NOT EXISTS database_name.first_table (
    id INT,
    name VARCHAR(256)
);
