INSERT INTO "Subscriptions"(subscription, price, description) 
VALUES ('Free', 0, 'Nikmati dengan 20x Iklan per 30 menit'),
('Basic', 10000, 'Tidak iklan cocok, nonton hanya bisa di weekday'),
('Standard', 50000, 'Nonton tiap hari yuk tanpa iklan'),
('Premium', 100000, 'Gak ada internet? download dulu dong nikmati dimana saja'),
('Super Premium', 150000, 'Nikmati bioskop dilayar gadgetmu dimana saja dan kapan saja, HD all time');

INSERT INTO "Features"(name, description) 
VALUES 
('20 Advertisment', 'Advertisment every 30 minutes'),
('No Ads', 'Terbebas dari gangguan iklan'),
('Advertistment on Weekend', 'feature pengguna basic subscription'),
('360p', 'resolution'),
('480p', 'resolution'),
('720p / HD', 'resolution'),
('1080p / HD', 'resolution'),
('Download movie', 'feature premium & super premium');

INSERT INTO "SubscriptionFeatures"("subscriptionId", "featureId") 
VALUES 
(1, 1), (1, 4),
(2, 2), (2, 3), (2, 4),(2, 5), 
(3, 2), (3, 4), (3, 5), 
(4, 2), (4, 4), (4, 5), (4,8), 
(5, 2), (5, 4), (5, 5), (5, 6), (5, 7), (5, 8);

INSERT INTO "Languages" (langueage, "greetingMessage")
VALUES ('English', 'Hey, What''s up?'),
('Bahasa Indonesia', 'Hai, apa kabarmu?'),
('Korean', 'Anyong kaseo'),
('Japanese', 'Konnichiwa'),
('Chinese', 'nǐ hǎo'),
('French', 'Bonjour'),
('Thai', 'Sawadikap (สวัสดี ค่ะ)');

INSERT INTO "ProductionHouses" (company, location)
VALUES ('H8 Production', 'DKI Jakarta, Indonesia'),
('Universal Immersive', 'Bandung, Jakarta Barat, Indonesia'),
('Infinitiy Fox', 'Singapore'),
('King Fox', 'Bangkok, Thailand'),
('DB', 'NYC, USA');

INSERT INTO "Movies" (title, duration, "productionHouseId", "languageId")
VALUES ('Callback Explorer', 120, 2, 1),
('I Loop U', 100, 5, 1),
('Live Code in Dreamland', 150, 1, 2),
('It'' Circular', 120, 3, 2),
('Mr. & Mrs. Debug', 120, 4, 1),
('Yugi ORM', 120, 4, 1),
('OOP-sy', 120, 2, 2),
('Copycat', 120, 4, 3),
('Infinite Fox Documentary', 120, 3, 4),
('Promise Me Soon', 120, 5, 5),
('Red Duck', 120, 4, 1),
('Dear Port 3000', 120, 1, 1);


INSERT INTO "Customers"("fullName", email, "subscriptionId", "paymentDate")
VALUES ('Ayu Sudi', 'ayusudi@h8.com', 1, '2021-06-24'),
('Afirahma', 'afifah@h8.com', 2, '2021-06-23'),
('Eas Andre', 'eas@gatcha.com', 3, '2021-06-22'),
('AR-rizal', 'ar_arrizal@h8.com', 4, '2021-06-21'),
('Harry Styles', 'harrystyle@onedirection.com', 5, '2021-06-20'),
('Master Josep', 'josep@h8.com', 4, '2021-05-24'),
('Nadira Antyna', 'nadian@median.com', 3, '2021-05-24'),
('Kang Daniel', 'kangdaniel@korean.com', 2, '2021-04-24'),
('Teddy Juned', 'juned@h8.com', 1, '2021-04-24'),
('Seven Not Eleven', 'seven@h8.com', 1, '2020-06-24'),
('Arnold', 'arnold@nick.com', 2, '2020-06-24'),
('Draco Malfoy', 'malfoydraco@harpot.com', 3, '2020-06-24'),
('Renhard Ren', 'renhard@h8.com', 4, '2021-12-20'),
('Alam', 'alam@semesta.com', 5, '2021-12-24'),
('Idaz', 'idaz@h8.com', 1, '2021-10-24'),
('Acong', 'acon@median.com', 4, '2021-08-24'),
('Budi', 'budi@median.com', 5, '2021-06-20'),
('Zayn Malik', 'zaynmalik@onedirection.com', 3, '2021-06-23'),
('Justin Bieber', 'justin@bieber.com', 5, '2021-06-25'),
('Timothy Timo', 'timothy@h8.com', 1, '2021-08-24');

INSERT INTO "Favorites"("customerId", "movieId", "createdAt")
VALUES (1, 1, '2021-09-05'),
(2, 1, '2021-09-05'),
(3, 3, '2021-09-05'),
(1, 3, '2021-09-05'),
(3, 2, '2021-09-05'),
(4, 2, '2021-09-05');