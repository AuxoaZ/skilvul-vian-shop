/* menampilkan data di table users */
SELECT * FROM users 
SELECT username, email FROM users ;

/* menampilkan data di table games */
SELECT id, name FROM games ;

/* menampilkan data di table user_profiles */
SELECT users.username, users.email, games.name, id_game, server FROM user_profiles
INNER JOIN users ON user_profiles.user_id = users.id
INNER JOIN games ON user_profiles.game_id = games.id;
/* WHERE users.id = 11; */

/* menampilkan data di table user_profiles */
SELECT  products.name, games.name AS game, price, updated_at  FROM products
INNER JOIN games ON products.game_id = games.id;

        /* hanya menampilkan produk mobile legend */
        SELECT  products.name, games.name AS game, price, updated_at  FROM products
        INNER JOIN games ON products.game_id = games.id
        WHERE game_id = 1;

/* menampilkan data di table checkouts */
SELECT  users.username,users.email, products.name, games.name  FROM checkouts
INNER JOIN users ON checkouts.user_id = users.id
INNER JOIN products ON checkouts.product_id = products.id
INNER JOIN games ON products.game_id = games.id;

        /* hanya menampilkan data di table checkouts untuk game moblie legend */
        SELECT  users.username,users.email, products.name, games.name  FROM checkouts
        INNER JOIN users ON checkouts.user_id = users.id
        INNER JOIN products ON checkouts.product_id = products.id
        INNER JOIN games ON products.game_id = games.id
        WHERE game_id =1;


