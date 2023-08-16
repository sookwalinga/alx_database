-- 5-full_table.sql

-- Print the full table description using information_schema
SELECT CONCAT('Table   ', table_name) AS 'Table', 
       CONCAT('CREATE TABLE ', table_name, ' (', GROUP_CONCAT(column_name, ' ', column_type), ') ENGINE=', engine, ' DEFAULT CHARSET=', table_collation) AS 'Create Table'
FROM information_schema.columns
WHERE table_schema = 'hbtn_test_db_4' AND table_name = 'first_table'
GROUP BY table_name;
