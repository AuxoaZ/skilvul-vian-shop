SELECT AVG(products.price) AS average
FROM checkouts
INNER JOIN products ON checkouts.product_id = products.id
WHERE created_at >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);
