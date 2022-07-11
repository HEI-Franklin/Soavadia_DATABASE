# Soavadia DATABASE

**Soavadia** is a trucking company that wanted to create an application to manage their services. 
The first step of this realization is the creation of the database you see here.

# Model
Here is the schema model of the database
<img src="https://github.com/HEI-Franklin/Soavadia_DATABASE/raw/develop/db_image/Soavadia_schema.jpg" alt="Soavadia database model"/>
## Prerequisites for using this model

- Operating system like Windows Linux or Mac
- PostgresSQL version 10 or higher.


## File

- The file "soavadia_db.sql" contains all the queries to create the database.
- The "insert.sql" file in the insert folder contains dummy data inserts to test the database.
- The files in the query folder are test queries to test the database.

## How to execute this code

- Go to your favorite terminal (CMD or Power Shell) for Windows and the terminal for Linux or Mac.
- Run the following command on your terminal and enter your password
	```` sql
	psql -U $user
	````
- Now that you are connected to postgres.
	Enter the following command to execute the file soavadia_db.sql
	```` sql
	\i path/soavadia_db.sql;
	````
	the "path" is the absolute path to your soavadia_db.sql file
	
- To test your database, we will first populate it with dummy data.
	Run the following command to populate your database with dummy data.
	```` sql
	\i path/insert.sql;
	````
	the "path" is the absolute path to your insert.sql file
- Now to connect to your database run the following command
	```` sql
	\c soavadia;
	````

- Between the following query is normally you have the following result
	```` sql
	SELECT * FROM client;
	````
	<img src="https://github.com/HEI-Franklin/Soavadia_DATABASE/raw/develop/db_image/insert_img.png" alt="result of select * from client"/>
	If this is the case, congratulations 🥳, your database is functional. If not, check again the steps we performed 	earlier.

## Requests
If you have any suggestions for improvement, bugs or anything you don't understand, please contact me at the following address. <a href= "mailto:hei.franklin.2@gmail.com">Franklin Hyriol</a>

**Licence :** the project is completely free you can do what you want with it.

	