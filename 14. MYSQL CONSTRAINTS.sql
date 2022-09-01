
# MYSQL CONSTRAINTS:
/* 
PRIMARY KEY CONSTRAINT:
CONSTRAINTS - Are specific rules, or limits that we define in our tables. The role of constraints is to outline the existing
relationships between different tables in our database e.g
NOT NULL: Primary, foreign, unique keys.
For primary key constraints: 
purchase number PRIMARY KEY OR PRIMARY KEY(Purchase-number); check in the schema section , info section at the DDL.

FOREIGN KEY CONSTRAINT:
FOREIGN KEY - Points to a column of another table and thus, links the 2 tables. It is a field from one table to another table. 
Table 1														Table 2
Column_name(FK)												Column_name
Child table = referencing table								Parent table - referenced table
Sales														Customers
Purchase number
Customer_id(FK)												Customer_id

Remember, this is not an obligatory requirement-these 2 keys may have 2 completely different names. What is important is that the 
data types and the info match. It is just common practice to use, if not the same, then similar names for both keys. 
Note:
A foreign key in SQL is defined through a foreign key constraint. The FK maintains the referential integrity within the database. 
Syntax:
FOREIGN KEY (customer_id) references customers(customer_id) ON DELETE CASCADE;
CASCADE: You want a certain phenomenon to affect the 2 referenced tables at the same time. ie if a specific value
from the parent table's primary key has been deleted, all the records from the child table referring to this value will be removed as well. 
If we delete one customer from the customer table, ON DELETE CASCADE will affect the same action on the sales table relating
to that customer. You can also add the FK constraint by;
ALTER TABLE Sales
ADD FOREIGN KEY(Customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE;  *check in the DDL section to verify the FK constraint. 
We can remove only the FK instead of the whole table. 
ALTER TABLE Sales
DROP FOREIGN KEY Sales_ibfk_1; & check the DDL tab.  OR
Go to sales table at the lower left schema, right click sales, Alter table,(A new tab appears) Select FK name, pick referenced table, 
extreme right key for ON DELETE CASCADE, Apply

UNIQUE CONSTRAINT:

Unique key  is used whenever you would like to specify that you don't want to see duplicate data in given field. It ensures 
that all values in a column (or set of columns) are different. The unique keys are implemented in SQL through a constraint
 - the unique constraint. 
 If you attempt to insert an already existing, duplicate value in the unique column, SQL will display an error. 
 Syntax:
 UNIQUE KEY(column_name)
 UNIQUE KEY (email_address);  OR
 ALTER TABLE table_name
 ADD UNIQUE KEY (column_name);  (email_address);
 
 INDEXES:
 Unique keys in MySQL have the same role as indexes, the reverse is not true!!!
 Index of a table:
 An organisational unit that helps retrieve data more easily. It takes more time to update a table because indexes
 must be updated too, and that is time consuming. So think of an index as a MySQL tool that can be created in a column which
 will be frequently used to retrieve information from a table, henve, the automatic treatement of a unique key as an index
 in MySQL. To remove a unique key from a table, we must use the following Syntax:
 ALTER TABLE table_name
 DROP TABLE Unique_key_field; DROP INDEX email_address; 
 
 DEFAULT CONSTRAINT:
 It helps us assign a particular default value to every row of a column. A value different from the default can be stored 
 in a field where the dafault constraint has been applied, only if specifically indicated. E.g the number of complaints
 column can have 0 as the default constraint. eg
 CREATE TABLE customers
 (customer_id INT,
 first_name VARCHAR(255),
 Last_name VARCHAR(255),
 email_address VARCHAR(255),
 number_of_complaints INT DEFAULT 0
 PRIMARY KEY (customer_id));
 
 ALTER TABLE customers
 CHANGE COLUMN number_of_complaints number_of_complaints
 then specify the data type
 ALTER TABLE table_name
 ALTER COLUMN column_name DROP DEFAULT; 
 
 THE NOT NULL CONStRAINT;
 The 'Not Null' restriction is applied through the Not Null constraint. 
 When you insert values in the table, you can't leave the respective field empty. 
 

