SELECT COUNT(game_id) AS total, games.name  FROM products
INNER JOIN games ON products.game_id = games.id
GROUP BY games.id
ORDER BY total DESC
LIMIT 1;