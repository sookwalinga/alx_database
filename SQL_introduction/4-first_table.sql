-- This SQL script creates a table called first_table in the specified database.

-- The user is prompted to enter the password for authentication
-- If the table already exists, the query will not fail due to the IF NOT EXISTS clause
CREATE TABLE IF NOT EXISTS `{{db_name}}`.first_table (
    id INT,
    name VARCHAR(256)
);
