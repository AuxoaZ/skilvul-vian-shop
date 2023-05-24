SELECT COUNT(products.id) AS total, products.name AS product, games.name  FROM checkouts
INNER JOIN products ON checkouts.product_id = products.id
INNER JOIN games ON products.game_id = games.id
GROUP BY product, games.name
ORDER BY total DESC
LIMIT 3;