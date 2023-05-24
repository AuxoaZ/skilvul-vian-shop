INSERT INTO users (username, email, password)
VALUES
    ('Budi_Santoso', 'budi@example.com', 'password123'),
    ('Anita_Wijaya', 'anita@example.com', 'abcd1234'),
    ('Hendri_Susanto', 'hendri@example.com', 'p@ssw0rd'),
    ('Siti_Rahayu', 'siti@example.com', 'qwerty'),
    ('Ahmad_Hidayat', 'ahmad@example.com', 'pass123'),
    ('Rina_Puspitasari', 'rina@example.com', '123456'),
    ('Dedi_Suryanto', 'dedi@example.com', 'passw0rd'),
    ('Rini_Setiawan', 'rini@example.com', 'qazxsw'),
    ('Jok_Prasetyo', 'joko@example.com', 'password123'),
    ('Linda_Hartono', 'linda@example.com', 'pass1234');

INSERT INTO games(name)
VALUES
    ( "Mobile Legend"),
    ( "Free Fire "),
    ( "Genshin Impact"),
    ("PUBG");

INSERT INTO user_profiles(user_id, game_id, id_game, server)
VALUES
    (11, 1, 109210120, 9909),
    (11, 2, 271232821, null),
    (11, 3, 121123423, null),
    (12, 2, 923297429, null),
    (12, 1, 839273287, 1123),
    (13, 1, 723273234, 2324),
    (14, 1, 563232393, 4322),
    (14, 3, 823728342, null),
    (15, 4, 643873922, null),
    (15, 2, 273627324, null);

INSERT INTO products(name, game_id, price)
VALUES
    ("70 Diamonds", 1, 27000),
    ("100 Diamonds", 1, 35000),
    ("255 Diamonds", 1, 44000),
    ("1000 Diamonds", 1, 56000),
    ("70 Diamonds", 2, 27000),
    ("100 Diamonds", 2, 35000),
    ("255 Diamonds", 2, 44000),
    ("1000 Diamonds", 2, 56000),
    ("60 GC", 3, 11700),
    ("330 GC", 3, 59000),
    ("1090 GC", 3, 180000),
    ("3800 GC", 3, 599000),
    ("263 UC", 4, 43000),
    ("340 UC", 4, 67000),
    ("525 UC", 4, 87000),
    ("2000 UC", 4, 305000);

INSERT INTO checkouts(user_id, product_id)
VALUES
    (11, 2),
    (11, 3),
    (11, 2),
    (12, 1),
    (12, 1),
    (13, 1),
    (13, 3),
    (13, 4),
    (14, 1),
    (14, 1),
    (14, 2),
    (15, 3),
    (16, 5),
    (16, 9),
    (16, 10),
    (16, 1),
    (17, 11),
    (17, 11),
    (17, 13),
    (18, 10),
    (18, 9),
    (19, 15),
    (19, 7),
    (19, 16);