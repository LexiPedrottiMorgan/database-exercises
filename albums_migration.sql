USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
column1_id int(10),
column2_artist VARCHAR(100) NOT NULL,
column3_name VARCHAR(100) NOT NULL,
column4_release_date DATE,
column5_sales FLOAT,
column6_genre VARCHAR(100) NOT NULL,
PRIMARY KEY (id)

);

