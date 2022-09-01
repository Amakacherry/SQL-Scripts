# SQL THEORY

/* SQL is a declarative language: 
To create and manipulate relational database, SQL is the programming language needed. 
Types of Programming:
1. Procedural (imperative)
2. Object-Oriented
3. Declarative (SQL is a declarative non procedural  programming language )
4. Functional
This means that while coding, you are not interested in how you want the job done, but what result you want to attain. e.g

Procedural(imperative) How; 						Declarative (Non procedural) What
1. Please open the door								Fetch the bucket please
2. Go outside
3. Take the bucket I forgot there
4. Bring it back to me

Main Components of SQL's Syntax:
1. Data Definition Language (DDL)
2. Data Manipulation Language (DML)
3. Data control language (DCL)
4. Transaction control language (TCL)

DATA DEFINITION LANGUAGE (DDL)
SQL's Syntax comprises several types of statements that allow you to perform various commands and operations. 
- DDL is a Syntax
- DDL is a set of statements that allow the user to define or modify data structures and objects , such as tables. 
   
# The CREATE STATEMENT:
Used for creating entire databases and database objects as tables. We must use : 
CREATE object_type object_name;
CREATE TABLE object_name(column+name data_type);
The table name can coincide with the name assigned to the database.

# The ALTER STATEMENT:
Used when altering existing objects e.g we can use alter to modify a table by; Add, Remove, Rename one of the columns
in the table. 
To alter: 
 ALTER TABLE Sales
 ADD COLUMN date_of_purchase DATE;
 The date of the purchase column is added to the table. 
 To delete the database object, you can use the drop language;
 DROP object_type object_name;
 DROP TABLE Customers;
 
 # The RENAME STATEMENT:
 Allows you to rename an object in a table;
 RENAME Object_type object_name to new_object_name;
 RENAME TABLE customers to customer_data;
 Instead of deleting an entire table to drop, we can remove the data but keep the table as an object in the database.
 We use the TRUNCATE TABLE Customers;
 
 The DDL allows you to; CREATE, ALTER, DROP, RENAME, TRUNCATE
 SQL KEYWORDS: ADD, CREATE, ALTER etc
 Keywords in SQL cannot be variable names or reserved words. 
 
 DATA MANIPULATION LANGUAGE (DML)
 
 It is a statement that allows us to manipulate the data in the tables of a database.   
 1. THE SELECT STATEMENT:
 Used to retrieve data from database objects, like tables. SELECT * FROM sales; The star will deliver the entire data
 in the table. You can also select specific data from a table especially when it's a large database.
 
 2. The INSERT STATEMENT:
 Is used to insert data into the table either more rows or columns. INSERT INTO sales(purchase_number, date_of_purchase)
 VALUES (1, '2017-10-11'); (2, '2017-10-11'); will be the second value. 
								Sales
				purchase_number				date_of_purchase
                     1      						2017-10-11    OR

INSERT INTO Sales 
VALUES(1, '2017-10-11');

3. The DELETE STATEMENT:
Functions similarly to the TRUNCATE statement.

TRUNCATE VS DELETE
Truncate allows us to remove all the records contained in a table . With DELETE, you can specify precisely what 
you would like to be removed. 
DELETE FROM Sales; = TRUNCATE TABLE sales;
DELETE FROM sales
WHERE
purchase_number =1; only the purchase number 1  will be deleted.
DML comprise mainly of ;

SELECT ......FROM
INSERT INTO ....VALUES
UPDATE ...SET...WHERE
DELETE...FROM...WHERE

DATA CONTROL LANGUAGE (DCL)
DCL is a syntax containing only 2 languages; The Grant and the Revoke statements. These statements allow us to manage the 
rights users have in a database. Several users of database in an organisation do not neccessarily have the same access to 
database. GRANT grants certain permision to users which could be complete or partial.
	These rights will be assigned to a person who has a username registered at the local server('localhost': IP 127.0.1)
Grant type of permission on database_name.table_name To 'Username' @ 'localhost'.
Big companies and corporations do not use this type of server, and their database lay on external, more powerful servers which 
are not on a local host and are assessible through different  IP addresses. 
To grant access to a user;
CREATE USER 'Frank'@'localhost';
GRANT ALL ON sales.* to 'frank '@'localhost';
He will only be able to select, He cannot work with DRP, TRUNCATE, ALTER, INSERT, DELETE.  
GRANT ALL ON Sales. * to 'frank '@' 'locust'; This will grant Frank access to all sales database table.
He can then create, drop, delete, truncate.
People who have complete access to database are database administrators; They can grant access to users and can revoke it.
The revoke clause is used to revoke permissions and privileges to database users. It is the opposite of GRANT. 
Revoke type_of_permission ON Database_name.table_name 
FROM 'username '@' localhost';
To revoke SELECT permission from Frank;
REVOKE SELECT ON Sales.customers FROM 'Frank '@' localhost';

# TRANSACTION CONTROL LANGUAGE (TCL):

Not every change you make to a database is saved automatically. The statement used to effect the change is the COMMIT Statement.
Related to insert, Delete, Update
Will save the changes you have made.
Will let other users have access to the modified version of the database. E.g when you want to make changes, you use the UPDATE statement
and use the COMMIT statement to effect the change. 
The COMMIT Statement can accrue. 
The ROLLBACK clause will let you make a step back. This allows you to undo any changes you have made but do not want to be saved permanently
E.g
UPDATE Customers
SET last_name = 'Johnson'
WHERE Customer_id = 4
Commit;
ROLLBACK;
Commit saves the transaction in the database. 
Changes cannot be undone

ROLLBACK allows you to take a step back. The last change(s) made will not count. reverts to the last non-committed state. 

SQL SYNTAX
DDL - Creation of data
DML - Manipulation of data
DCL - Assignment and removal of permissions to use this data
TCL - Saving and restoring changes to a database. 

                     
                     
                     
 
 




















