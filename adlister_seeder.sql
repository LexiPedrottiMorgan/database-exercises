USE adlister;

CREATE TABLE IF NOT EXISTS users(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(200) NOT NULL,
  last_name VARCHAR(200) NOT NULL,
  email VARCHAR(200) NOT NULL,
  PRIMARY KEY(id)
);


CREATE TABLE IF NOT EXISTS ad(
  ad_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED NOT NULL,
  title VARCHAR(500) DEFAULT NOT NULL,
  price DOUBLE UNSIGNED DEFAULT 0.00,
  description TEXT DEFAULT NULL,
  PRIMARY KEY(ad_id),
  FOREIGN KEY(user_id) REFRENCES users(id)
);


CREATE TABLE IF NOT EXISTS categories(
  cat_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  cat_name VARCHAR(200) NOT NULL,
  PRIMARY KEY(cat_id)
);


CREATE TABLE IF NOT EXISTS ad_category(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  ad_id INT UNSIGNED NOT NULL,
  cat_id INT UNSIGNED NOT NULL,
  FOREIGN KEY(ad_id) REFERENCES ad(ad_id),
  FOREIGN KEY(cat_id) REFERENCES categories(cat_id),
  PRIMARY KEY(id)
);


INSERT INTO categories(cat_name)
VALUES
  ('AUTO PARTS'),
  ('TOOLS'),
  ('JEWELRY'),
  ('ELECTRONICS'),
  ('FREE'),
  ('ANTIQUES'),
  ('CRAFTS'),
  ('DIY'),
  ('HOME'),
  ('APPLIANCES'),
  ('PETS'),
  ('BOOKS'),
  ('FURNITURE'),
  ('NEW'),
  ('USED'),
  ('HOME'),
  ('OUTDOORS'),
  ('SPORTS')
  ('INDOOR');


INSERT INTO users(first_name, last_name, email, password) VALUES
  ('Lexi', 'Morgan', 'LM@email.com', 'password'),
  ('Aaron', 'Morgan', 'Aaron@email.com', 'Am4'),
  ('Molly', 'Pop', 'puppers@email.com', 'Molly2'),
  ('Mako', 'Snake', 'moonMoon@email.com', 'Makey3');


INSERT INTO ad(user_id, title, price, description) VALUES
  (1, 'Old iphone3', '25.00', 'Used iphone 3. Screen in good condition, minimal scratches.'),
  (2, 'Skateboard', '15.00', 'Used skateboard, decent condition.'),
  (3, 'Chew Toy', '3.00', 'Half chewed up dog toy.'),
  (4, 'Dog Food', '8.00', 'New bag of dry dog food, 18lb bag.');

INSERT INTO ad_category(ad_id, cat_id) VALUES
(1, 4),
(1, 15),
(1, 6),
(2, 15),
(2, 17),
(2, 18),
(3, 11),
(3, 15),
(4, 9),
(4, 11),
(4, 14);