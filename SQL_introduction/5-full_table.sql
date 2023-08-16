-- -- This SQL script prints the full description of the table first_table from the specified database.

-- -- The user is prompted to enter the password for authentication
-- -- The query uses the information_schema database to retrieve table information without using DESCRIBE or EXPLAIN
-- SELECT TABLE_NAME, CREATE_TABLE
-- FROM information_schema.TABLES
-- WHERE TABLE_SCHEMA =hbtn_test_db_4 AND TABLE_NAME = first_table;

-- This SQL script prints the full description of the table first_table from the specified database.

-- The query uses the information_schema database to retrieve table information without using DESCRIBE or EXPLAIN
SELECT TABLE_NAME, TABLE_TYPE, CONCAT('CREATE TABLE `', TABLE_NAME, '` (', GROUP_CONCAT(COLUMN_NAME, ' ', COLUMN_TYPE, IF(IS_NULLABLE = 'NO', ' NOT NULL', ''), IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', COLUMN_DEFAULT), ''), IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', ''), IF(COLUMN_KEY = 'PRI', ' PRIMARY KEY', ''), IF(CHARACTER_SET_NAME IS NOT NULL, CONCAT(' CHARACTER SET ', CHARACTER_SET_NAME), ''), IF(COLLATION_NAME IS NOT NULL, CONCAT(' COLLATE ', COLLATION_NAME), '')) SEPARATOR ',\n'), ') ENGINE=', ENGINE, ' DEFAULT CHARSET=', TABLE_COLLATION AS CREATE_TABLE_STATEMENT
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = hbtn_test_db_4 AND TABLE_NAME = first_table;
