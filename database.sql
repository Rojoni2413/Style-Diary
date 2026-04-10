CREATE DATABASE IF NOT EXISTS festive_db;
USE festive_db;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    festival_tag VARCHAR(50) NOT NULL
);

INSERT INTO products (name, price, image_url, festival_tag) VALUES 
-- 8 Saree (Boishakhi Theme)
('Red-White Boishakhi Jamdani', 5500, 'saree1.jpeg', 'boishakh'),
('Tangail Tat Saree Classic', 2500, 'saree2.jpeg', 'boishakh'),
('Block Print Cotton Saree', 1800, 'saree3.jpeg', 'boishakh'),
('Hand-painted Alpona Saree', 4500, 'saree4.jpeg', 'boishakh'),
('Boishakhi Silk Boutique', 6800, 'saree5.jpeg', 'boishakh'),
('Traditional Garad Saree', 7500, 'saree6.jpeg', 'boishakh'),
('Linen Festive Red Saree', 3200, 'saree7.jpeg', 'boishakh'),
('Floral Boishakhi Muslin', 2500, 'saree8.jpeg', 'boishakh'),

-- 4 Panjabi
('Red-White Festive Panjabi', 2200, 'panjabi1.jpeg', 'boishakh'),
('Boishakhi Block Kurta', 1200, 'panjabi2.jpeg', 'boishakh'),
('Cotton Comfort Panjabi', 1500, 'panjabi3.jpeg', 'boishakh'),
('Designer Boishakhi Kabli', 4800, 'panjabi4.jpeg', 'boishakh'),

-- 8 Pankha (Pohela Boishakh Essential)
('Alpona Hand Fan', 250, 'pankha1.jpeg', 'boishakh'),
('Nakshi Kantha Pankha', 450, 'pankha2.jpeg', 'boishakh'),
('Jute Crafted Pankha', 350, 'pankha3.jpeg', 'boishakh'),
('Village Heritage Fan', 200, 'pankha4.jpeg', 'boishakh'),
('Bamboo Decorative Fan', 150, 'pankha5.jpeg', 'boishakh'),
('Floral Painted Pankha', 500, 'pankha6.jpeg', 'boishakh'),
('Shitol-Pati Hand Fan', 400, 'pankha7.jpeg', 'boishakh'),
('Classic Red-White Fan', 300, 'pankha8.jpeg', 'boishakh'),

-- 5 Bangle (Reshmi Churi)
('Boishakhi Reshmi Churi Set', 350, 'bangle1.jpeg', 'boishakh'),
('Glass Bangle Festive Mix', 250, 'bangle2.jpeg', 'boishakh'),
('Terracotta Bangle Pair', 500, 'bangle3.jpeg', 'boishakh'),
('Floral Clay Bangles', 450, 'bangle4.jpeg', 'boishakh'),
('Hand-painted Wooden Bangles', 650, 'bangle5.jpeg', 'boishakh'),

-- 5 Jewellery
('Clay Choker Necklace', 850, 'jwellery1.jpeg', 'boishakh'),
('Oxidized Silver Jwellwery', 1200, 'jwellery2.jpeg', 'boishakh'),
('Boishakhi Beaded Mala', 750, 'jwellery3.jpeg', 'boishakh'),
('Terracotta Jewellery Set', 1500, 'jwellery4.jpeg', 'boishakh'),
('Traditional Hansuli Set', 2200, 'jwellery5.jpeg', 'boishakh');

COMMIT;

INSERT INTO products (name, price, image_url, festival_tag) VALUES 
-- Pakistani Suits (Eid Tag)
('Luxury Lawn Embroidered 3PC', 4500, 'pak_1.jpg', 'eid'),
('Organza Party Wear 3PC', 6500, 'pak_2.jpg', 'eid'),
('Aghanoor Digital Print 3PC', 3800, 'pak_3.jpg', 'eid'),
('Chiffon Wedding Edition 3PC', 8200, 'pak_4.jpg', 'eid'),
('Cotton Silk Festive 3PC', 5200, 'pak_5.jpg', 'eid'),

-- Family Combos (Eid Tag)
('Classic Family Combo', 8500, 'family_combo1.jpg', 'eid'),
('Royal Silk Family Set', 9200, 'family_combo2.jpg', 'eid'),
('Festive Combo', 7800, 'family_combo3.jpg', 'eid'),

-- Kids Collection (Eid Tag)
('Little Champ Set', 1850, 'kids_1.jpg', 'eid'),
('Tiny Angel', 2800, 'kids_2.jpg', 'eid'),
('Junior Nawab Sherwani', 3500, 'kids_3.jpg', 'eid'),
('Floral Fairy', 2200, 'kids_4.jpg', 'eid'),
('Urban Kids Denim Fusion', 1500, 'kids_5.jpg', 'eid');

COMMIT;