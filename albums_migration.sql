USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
column1_id int(10),
column1_artist VARCHAR(100) NOT NULL,
column1_name VARCHAR(100) NOT NULL,
column1_release_date DATE,
column1_sales FLOAT,
column1_genre VARCHAR(100) NOT NULL,
PRIMARY KEY (id)

);

