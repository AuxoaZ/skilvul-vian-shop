/* create table */
CREATE TABLE `users` (
  `id` INT PRIMARY KEY AUTO_INCREMENT AUTO_INCREMENT,
  `username` VARCHAR(255) UNIQUE,
  `email` VARCHAR(255) UNIQUE,
  `password` VARCHAR(255),
  `created_at` TIMESTAMP
);

CREATE TABLE `user_profiles` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `user_id` INT,
  `game_id` INT,
  `id_game` INT,
  `server` INT
);

CREATE TABLE `games` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(255)
);

CREATE TABLE `products` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(255),
  `game_id` INT,
  `price` float,
  `updated_at` TIMESTAMP
);

CREATE TABLE `checkouts` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `user_id` INT,
  `product_id` INT,
  `created_at` TIMESTAMP
);

/* add foreign key */
ALTER TABLE `user_profiles` 
ADD CONSTRAINT `profiles_to_user`
FOREIGN KEY (`user_id`) 
REFERENCES `users` (`id`) 
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE `user_profiles` 
ADD CONSTRAINT `profiles_to_games`
FOREIGN KEY (`game_id`) 
REFERENCES `games` (`id`)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE `products` 
ADD CONSTRAINT `products_to_game`
FOREIGN KEY (`game_id`) 
REFERENCES `games` (`id`)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE `checkouts` 
ADD CONSTRAINT `checkouts_to_user`
FOREIGN KEY (`user_id`) 
REFERENCES `users` (`id`)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE `checkouts` 
ADD CONSTRAINT `cehckouts_to_products`
FOREIGN KEY (`product_id`) 
REFERENCES `products` (`id`)
ON UPDATE CASCADE ON DELETE CASCADE;
