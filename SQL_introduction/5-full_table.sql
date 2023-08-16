-- This SQL script prints the full description of the table first_table from the specified database.

-- The query uses the information_schema database to retrieve column information
-- and constructs the CREATE TABLE statement
SELECT CONCAT(
    TABLE_NAME, 
    'CREATE TABLE `', 
    TABLE_NAME, 
    '` (', 
    GROUP_CONCAT(
        COLUMN_NAME, 
        ' ', 
        COLUMN_TYPE, 
        IF(IS_NULLABLE = 'NO', ' NOT NULL', ''), 
        IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', COLUMN_DEFAULT), ''), 
        IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', ''), 
        IF(COLUMN_KEY = 'PRI', ' PRIMARY KEY', '')
        SEPARATOR ',\n'
    ),
    ')'
) AS CREATE_TABLE_STATEMENT
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = 'hbtn_test_db_4' AND TABLE_NAME = 'first_table'
GROUP BY TABLE_NAME;
