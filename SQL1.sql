# Q1.Create a table called employees with the following structure?      
/*                                                   
CREATE TABLE employees (
    emp_id INTEGER NOT NULL PRIMARY KEY,
    emp_name TEXT NOT NULL,
    age INTEGER CHECK (age >= 18),
    email VARCHAR(255) UNIQUE,
    salary DECIMAL DEFAULT 30000
);
*/


#Q2.  Explain the purpose of constraints and how they help maintain data integrity in a database. Provide examples of common types of constraints.
/*
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INTEGER NOT NULL PRIMARY KEY,
    emp_name TEXT NOT NULL,
    age INTEGER CHECK (age >= 18),
    email VARCHAR(255) UNIQUE,
    salary DECIMAL DEFAULT 30000
);
*/

#Q3.Why would you apply the NOT NULL constraint to a column? Can a primary key contain NULL values? Justify your answer.
/*
Applying the NOT NULL constraint to a column ensures that the column cannot have a NULL value. Here are a few reasons why you might want to use the NOT NULL constraint:

Data Integrity: Ensures that essential data is always provided. For example, if emp_name is critical for identifying an employee, applying NOT NULL ensures that every employee record has a name.

Avoiding Null Values in Calculations: Null values can cause issues in calculations or aggregations. Ensuring that certain fields always have a value can help maintain accuracy.

Business Logic: Some data might be fundamental to your business processes and must always be present. For example, an order must always have a product ID.

CREATE TABLE employees (
    emp_id INTEGER NOT NULL PRIMARY KEY,
    emp_name TEXT NOT NULL,
    age INTEGER CHECK (age >= 18),
    email VARCHAR(255) UNIQUE,
    salary DECIMAL DEFAULT 30000
);
*/

#Q4. Explain the steps and SQL commands used to add or remove constraints on an existing table. Provide an example for both adding and removing a constraint.
"""
Adding Constraints
When you add a constraint, you're defining rules to maintain data integrity. Here’s an example of adding a UNIQUE constraint.


ALTER TABLE users
ADD CONSTRAINT unique_email UNIQUE (email);

Removing Constraints
Removing a constraint typically involves using the ALTER TABLE statement again to drop the specific constraint.

-- Remove the UNIQUE constraint from the 'email' column in the 'users' table
ALTER TABLE users
DROP CONSTRAINT unique_email;
"""

#Q5. Explain the consequences of attempting to insert, update, or delete data in a way that violates constraints. Provide an example of an error message that might occur when violating a constraint.
"""
Primary Key Constraint: Ensures each row has a unique identifier.

Consequence: Attempting to insert a duplicate value into a primary key column will result in an error.

Example Error Message: Violation of PRIMARY KEY constraint 'PK_TableName'. Cannot insert duplicate key in object 'TableName'. The duplicate key value is (Value).

Foreign Key Constraint: Ensures that a value in one table matches a value in another table's primary key.

Consequence: Attempting to insert a value that doesn't exist in the referenced table will result in an error.

Example Error Message: The INSERT statement conflicted with the FOREIGN KEY constraint "FK_ConstraintName". The conflict occurred in database "DatabaseName", table "TableName", column 'ColumnName'.

Unique Constraint: Ensures all values in a column are unique.

Consequence: Attempting to insert a duplicate value into a unique column will result in an error.

Example Error Message: Violation of UNIQUE KEY constraint 'UQ_TableName_ColumnName'. Cannot insert duplicate key in object 'TableName'. The duplicate key value is (Value).

Check Constraint: Ensures that the values in a column meet a specific condition.

Consequence: Attempting to insert or update a value that doesn't meet the condition will result in an error.

Example Error Message: The INSERT statement conflicted with the CHECK constraint "CK_ConstraintName". The conflict occurred in database "DatabaseName", table "TableName", column 'ColumnName'.

Not Null Constraint: Ensures that a column cannot have null values.

Consequence: Attempting to insert or update a row with a null value in a non-nullable column will result in an error.

Example Error Message: Cannot insert the value NULL into column 'ColumnName', table 'TableName'; column does not allow nulls. INSERT fails.
"""

#Q6.  You created a products table without constraints as follows:
"""
CREATE TABLE products (

product_id INT,

product_name VARCHAR(50),

price DECIMAL(10, 2));  
Now, you realise that?
: The product_id should be a primary keyQ
: The price should have a default value of 50.00

Add Primary Key Constraint on product_id:
ALTER TABLE products
ADD CONSTRAINT PK_product_id PRIMARY KEY (product_id);

Add Default Value on price:
ALTER TABLE products
ADD CONSTRAINT DF_price DEFAULT 50.00 FOR price;
"""
#Q7.You have two tabled
"""
SELECT Students.student_name, Classes.class_name
FROM Students
INNER JOIN  Classses
ON Students.class_id = Classes.class_id;

this query joins the Students table with the Classes tabel based on the class_id field and fetches student_name from Students tablealong with class_name
"""
#Q8. consider three tables
"""
SELECT 
    Products.order_id,
    Customers.customer_name,
    Products.product_name
FROM 
    Products
LEFT JOIN Orders ON Products.order_id = Orders.order_id
LEFT JOIN Customers ON Orders.customer_id = Customers.customer_id;
"""

#Q9.Given following tables
"""
SELECT 
    Products.product_name,
    SUM(Sales.amount) AS total_sales
FROM 
    Sales
INNER JOIN 
    Products 
ON 
    Sales.product_id = Products.product_id
GROUP BY 
    Products.product_name;
"""

#Q10.You are given three tables
"""
ELECT
    Orders.order_id,
    Customers.customer_name,
    Order_Details.quantity
FROM
    Orders
INNER JOIN
    Customers ON Orders.customer_id = Customers.customer_id
INNER JOIN
    Order_Details ON Orders.order_id = Order_Details.order_id;
    """
    