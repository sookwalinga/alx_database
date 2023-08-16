-- This SQL script displays the number of records with id = 89 in the table first_table of the specified database.

-- The database name is passed as an argument to the mysql command
-- The user is prompted to enter the password for authentication
SELECT COUNT(*) AS count_89
FROM database_name.first_table
WHERE id = 89;
