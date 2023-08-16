### SQL - More queries

1. **How to create a new MySQL user:**
   To create a new MySQL user, use the `CREATE USER` statement followed by the username and password. For example:

   ```
   CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
   ```

2. **How to manage privileges for a user to a database or table:**
   To manage privileges for a user, use the `GRANT` statement. You can grant privileges like SELECT, INSERT, UPDATE, DELETE on specific databases or tables. For example:

   ```
   GRANT SELECT, INSERT ON database_name.table_name TO 'username'@'localhost';
   ```

3. **What's a PRIMARY KEY:**
   A PRIMARY KEY is a column or a set of columns in a database table that uniquely identifies each row. It ensures data integrity and enforces uniqueness.

4. **What's a FOREIGN KEY:**
   A FOREIGN KEY is a column or a set of columns in a table that establishes a link between the data in two tables. It creates a relationship between tables, enforcing referential integrity.

5. **How to use NOT NULL and UNIQUE constraints:**
   The `NOT NULL` constraint ensures that a column cannot have NULL values. The `UNIQUE` constraint ensures that all values in a column are unique across the table.

6. **How to retrieve data from multiple tables in one request:**
   Use SQL `JOIN` statements to retrieve data from multiple related tables based on a common column. This combines data from different tables into a single result set.

7. **What are subqueries:**
   Subqueries are nested queries within a main query. They allow you to retrieve data from one table and use it as a condition or value in another query, providing a way to perform complex data retrieval.

8. **What are JOIN and UNION:**
   - **JOIN:** A JOIN operation combines rows from two or more tables based on a related column. Common types include INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL JOIN.
   - **UNION:** A UNION operation combines the result sets of two or more SELECT queries into a single result set, removing duplicate rows by default.
