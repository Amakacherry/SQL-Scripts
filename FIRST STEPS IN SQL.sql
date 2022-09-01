
# FIRST STEPS IN SQL
/* Creating a Database(Part 1)

CREATE DATABASE[IF NOT EXIST] database_name;
CREATE DATABASE - Will create the database though it;s still empty. 
[IF NOT EXISTS] - Verifies if a database with the same name exists already. 
The brackets around mean the statement is optional(you could either type or omit the statement). 
Database Name:
Give a name that is short but at the same time, as related to the content of the data as possible.
The SQL code is not case-sensitive, and the quotes are also optional. 

(The Semicolon Character)
It functions as a statement terminator.
When your code contains more than a single statement, ;(Semi Colon) is indispensable. 
Will help you avoid errors sometimes
Will improve the readability of your code. 

To execute a query - ctrl-shift-enter. 
You can use create database or create schema. 

Creating a Database (Part 2)
Type: Use sales to activate your note the next time you open it for use. 

INTRODUCTION TO DATA TYPES:
When we create a database table, We must always specify the type of data that will be inserted in each column
of the table. 
Different data types represent different types of information that can be contained in a specific column. 
'James' is a string. 
Length - Is a measure used to indicate how many symbols a certain string has. 'James' = 5 symbols, 'Jackson' = 7 symbols
Digits, symbols, or blank spaces can also be used in the string format. 
Size - Indicates the memory space used by a data type. - measured in bytes - 1 byte ~ 1 symbol

STRING DATA TYPES:

STRING - The text format in SQL
'James' - A variable of the string data type = A variable of the alphanumeric data type. 
There are a few string data types in SQL. They are similar, the difference is the storage space. 
Is the Character type (CHAR) - It demand big data type. It is a string type regardless of the value of the space assigned to it. 
(CHAR 5) - Represents the maximum number of symbols you are allowed to use in writing a value in this format. 
Name 			length(symbol) 		Size(bytes) 	Storage
'James'				5					5				Fixed
'Bob'				3		alter		5				

The bytes of 5 for both 'James' and 'Bob' means that the CHAR storage being fixed will always take the same size (bytes) for
every character. VARCHAR - Is another string data type Variable Character. It responds to change in the link of the string
being inserted i.e due to the variability which regards the storage space needed.

The maximum storage varies and not fixed like in CHAR. The maximum size in bytes for CHAR is 255 while the VARCHAR is up to
65,535 bytes. CHAR exists because in processing data, CHAR is 50% faster in speed and this difference becomes important
when a huge amount of data is involved. The VARCHAR reqires smaller storage if the value is shorter. It is also more responsive to
the data value inserted. 
Another difference is CHAR(3) will provide a well organised achronyms of 3 letters table. In setting a password of not more 
than 10 symbols, VARCHAR(10) will do a great job because the space occupied will be precise. 
Another alphanumeric data type is the ENUM(enumerate). It is handy when you know in advance the type of columns you will be working
with . eg ENUM('M', 'F')
MySQL will show an error if you attempt to insert any value different from 'M' or 'F'. 

INTEGERS
Text values are not the only values you insert in tables. Numbers or numeric data types are also inserted. 
Numeric Data Types - Integer, Fixed point, Floating point
Integers are numbers with no decimal point eg 5, 15, -200, 1000
INTEGER or INT allows us to insert integers in the tables. 
Signed Integers - If the encompassed range includes both positive and negative values' 
Unsigned Integers - If integers are allowed to be only positive. 
Integer data types are signed by default. If you want to use a range containing only positive, 'unsigned' values,
you will have to specify this in your query. 

Scale - Refers to the number of digits to the right of the decimal point in a number.  
eg Decimal (5,3)
Fixed point data represent exact values. Decimal(5,3)    10.523 If you insert only 10.5, SQL will complete 00 to make it scale of 3
If you insert 10.5236789 for fixed floating point, SQL will approximate to a scale of 3 and issue a warning. 

When only one digit is specified within the parenthesis, it will be treated as the precision of the data type. 
Decimal of (7) is equal to decimal (7,0) = 1234567 fits the criteria. 
Decimal has a synonymous data type. It is called numeric . Decimal = Numeric it is a specific type . 
It functions same way as decimal eg salaries
Numeric (P,S)
Precision P = 7
Scale  S = 2
eg Numeric (7,2) and 73,000.50 fits the numeric data type. 

FLOATING POINT DATA TYPE
Used for approximate values only. Aims to balance between range and precision (=> "floating")
eg Float (5,3)					10.523
		10.5236789				10.523   but will not give any warning because it is not fixed data type. 
The main difference between the fixed and the floating point type is in the way the value is represented
in the memory of the computer. Fixed will give a warning if the specified data type is not obeyed and vice versa. 

OTHER USEFUL DATA TYPES:
DATE, TIME. 
Date - 7777-MM-DD
We could use Date + Time = Datetime. YYYY-MM-DD:MM:SS (Fraction)
Datetime - Represents the date shown on the calender and the time shown on the clock. 
Timestamp - Used for a well-defined, exact point in time. 1st of Jan 1970 utc - 19th of Jan 2038, 03:14:07 UTC (Universal time). 
Importance - Timestamp records the moment in time as the number of seconds passed after the 1st of Jan 1970 00:00:00 UTC. 
eg 25th of July 2018: 1,535,155,200 (more than 48 years). 
Timestamp: - Representing a moment in time as a number allows you to easily obtain the difference between two TIMESTAMP value.
eg 
		End Time: '2018-07-25 10:30:00' UTC  Timestamp
        Start time: '2018-07-25 09:00:00' UTC Timestamp
										5,400  Timestamp
                                        
Timestamp is appropriate if you need to handle time zones
London = 1:00 am
Paris  = 2:00 am  1970 01-01-01:00:00 UTC. Same time, Different time zones. 

Data must be written wihin quotes:
String, Date, and time data types:
CHAR, VARCHAR, DATE, DATETIME, TIMESTAMP

OTHER COMPARISON OPERATORS:
Only numeric values are written without quotes.
Numeric Data Types:
INTEGER, DECIMAL, NUMERIC, FLOAT, DOUBLE
		Another useful data type is called BLOB - Binary Large Objects.
Refers to a file of binary data - Data with Ls and Os
Involves saving files in a record - eg *.doc, *.xlsx, *.xmL, *.jpg, *.Wav

CREATING A TABLE:
Creating a table is like creating a database. 
CREATE DATABASE(IF NOT EXIST) Sales;
CREATE TABLE table_name();
Compulsery requirement in creating a table is to addat least one column.
CREATE TABLE table_name
(column 1 data_type constraints, 
column 2 data_type constraints,
column_n data_type constraints);

Auto Increment:
Frees you from having to insert all purchase numbers manually through the insert command at a later stage. 
Assigns 1 to the 1st record of the table and automatically increments by 1 for every subsequent row. 
eg CREATE TABLE sales
(purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
date_of_purchase DATE NOT NULL,
Customer_id_INT,
item_code VARCHAR (10) NOT NULL);

USING DATABASES AND TABLES:
Execute Use Sales; to indicate that you want your queries to be applied to your database. Database contain several tables.
Whenever you want to refer to an SQL object in your queries, you must specify the database to which it is applied. An e.g of
an SQL object is the SQL table. Other objects are;
SQL table
Views
Stored procedures
Functions
1. Set a default database 
Use sales;
SELECT * FROM customers; OR SELECT * FROM Sales.customers;
2. Call a table from a certain database e.g
database_object; SQL-object
Select*from Sales.customers dot operator - Signals the existence of a connection between the 2 object types.

ADDITIONAL NOTES ON USING TABLES:

QUERY - A command you write in SQL with the idea of either retrieving information from the database on which you are working, or alternatively, to insert,
update, or delete data from it. 
it is a representation of a complete logical thought. The proper way to finish a query is to place a ;(semicolon or statement terminator) at the end.

The DROP Statement:
Used for deleting an SQL object
DROP TABLE table_name; 
DROP TABLE sales; 
 











