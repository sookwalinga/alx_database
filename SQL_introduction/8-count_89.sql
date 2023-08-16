-- This SQL script displays the number of records with id = 89 in the table first_table of the specified database.

-- The user is prompted to enter the password for authentication
SELECT COUNT(*) AS count_89
FROM hbtn_test_db_8.first_table
WHERE id = 89;
