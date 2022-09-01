# BASIC DATABASE TERMINOLOGY
 /* RELATIONAL DATABASE ESSENTIAL:
 There are 2 main types of database; Relational and Non relational database.
 Regards more complex systems. Requires mathematics and programming. 
 Relational database are still the preferd choice in many companies. The main goal of databases are to organise 
 huge amounts of data that can be quickly retrieved. The larger the database, the more the memory space and the slower 
 the processing speed. The solution to accomodate the is the Relational Algebra mathematical logic. Here, you break down the data 
 into smaller chunks like; sales, customer ID, and items code to enable faster processing speed and access. 
 Relational Databases or 3 relations are the smallest units in the entire systemthat can carry integral logical meaning. With this;
 we attain the term; relational database management system (RDBMS)
 
 # DATABASE DESIGNER:
 Plots the entire database system on a canvas using a visualisation tool by:
 1. Drawing an entity relationship diagram ER. Another form of representation of the database id the Relational Schema. 
 It is an existing idea of how the database must be organised. all Relational Schemas in a database form the database Schema.
 After the Database design, we move to Database creation. At this stage, SQL can be used to set up the database physically.
 It enhance data manipulation. It also allows you to use your dataset to extract business insights, performance, efficiency.
 Database design + Creation + Manipulation. 
	Database management involves the above 3 processes. 
Database Administration - Takes care of the database on a daily basis. 
Relational Schemas: Primary Key
Sales, Customer - items - companies
A column(or a set of columns) whose value exists and is unique for every record in a table is called a primary key. 
- Each table can have one and only one primary key. 
- In one table, you cannot have 3 or 4 primary keys. 
- The primary key of a table may be composed of a set of columns eg "purchase_number"+ "date_of_purchase"
- Primary keys are the unique identifiers of a table. 
- Cannot contain null values. 
	One column primary key = all purchases will be recorded under a different number. 
    Sales						
    Purchase number					The unique identifier (primary key) is always underlined  (purchase number)
    customer_id (FK)
    item_code (FK)
 Not all tables you work with will have a primary key. When you combine the relational Schemas of the tables we have in a 
 database, they form a database schema. The entire tables put together form the Relational Schemas.
 
 RELATIONAL SCHEMAS - FOREIGN KEY
 In the customers table, we have customer_id column and in the Sales table, we have customer_id column. 
 The customer_id column in the customers table is the primary key, while the customer_id column in the 
 Sales table is the foreign key. Always look for the foreign keys, as they show us where the relations are. 
 No repeating and missing values(unique values only). For foreign keys, there's repeating and missing values. 
		Foreign key - Identifies the relationship between tables, not the tables themselves. 
        
		Relational Schemas - Unique key and null values:
Company_names are unique identifier keys. You can have 2 or more companies with the same name but registered in different
states or industries. But the headquarters phone numbers cannot be the same. Therefore, they are unique keys; They are used 
whenever you would like to specify that you don't want to see duplicate data in a given field. Mind you, they are not primary keys. 

								Primary Key						Unique Key
Null Values							No								Yes
No of keys							1								0,1,2
Application to multiple columns		Yes								Yes


									RELATIONSHIPS
Relationships tell you how much o the data from a foreign key field can be seen in the primary key column of the table the data
is related to and vice versa.

ONE-TO-MANY TYPE OF RELATIONSHIP
One value from the customer_id column under the 'customers' table can be found many times in the customer_id column in the 'sales'
table. The customers to sales relationship is one-to-many, while the sales to customers relationship is many-to-one.

TYPES OF RELATIONSHIPS:
One-to-many(Many-to-one)
One-to-One
Many-to-Many

RELATIONAL SCHEMAS:
Represent the concept database administrators must implement.
Depict how a database is organised. 
Will help you immensely while writing your queries. 

					
                    
                    
                    
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 