USE csc468;

CREATE TABLE cattle(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	age INT,
	breed VARCHAR(255)
);

load data infile '/var/lib/mysql-files/cattle_import.csv'
into table cattle
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;
