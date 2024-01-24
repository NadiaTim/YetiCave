-- Добавление существующего списка категорий
INSERT INTO categories (name_category, code_category)
VALUES ('Доски и лыжи', 'boards'),
('Крепления', 'attachment'),
('Ботинки', 'boots'),
('Одежда', 'clothing'),
('Инструменты', 'tools'),
('Разное', 'other');


-- Добавление пользователей в БД
INSERT INTO YetiCave.users 
VALUES (NULL, 'Vilok', 'Vilok@gmail.com', '654321', NULL, CURRENT_TIMESTAMP),
(NULL, 'Vilok2', 'Vilok2@gmail.com', '654321', NULL, CURRENT_TIMESTAMP),
(NULL, 'Sveta', 'Svetik@gmail.com', 'qwerty', '89635697856', CURRENT_TIMESTAMP);

-- Добавление существующего списка объявлений
INSERT INTO lots
VALUES (NULL, '2023-08-08', '2014 Rossignol District Snowboard',NULL, 'img/lot-1.jpg', 10999, '2023-09-08', 500, 1, 4, 1),
(NULL, '2023-11-05', 'DC Ply Mens 2016/2017 Snowboard',NULL, 'img/lot-2.jpg', 159999, '2023-12-05', 100, 1, 3, 1),
(NULL, '2023-11-15', 'Крепления Union Contact Pro 2015 года размер L/XL',NULL, 'img/lot-3.jpg', 8000, '2023-12-15', 100, 1, 4, 2),
(NULL, '2023-11-20', 'Ботинки для сноуборда DC Mutiny Charocal',NULL, 'img/lot-4.jpg', 10999, '2023-12-20', 1000, 3, 1, 3),
(NULL, '2023-12-30', 'Куртка для сноуборда DC Mutiny Charocal',NULL, 'img/lot-5.jpg', 7500, '2023-12-30', 300, 4, 3, 4),
(NULL, DEFAULT, 'Маска Oakley Canopy',NULL, 'img/lot-6.jpg', 5400, '2024-02-18', 100, 4, NULL, 6);

-- Добавление списка осуществленных ставок
INSERT INTO bets
VALUES (NULL, '2023-08-20', 11499, 3, 1),
(NULL, '2023-08-30', 11999, 4, 1),
(NULL, '2023-11-15', 160099, 3, 2),
(NULL, '2023-11-20', 8100, 4, 3),
(NULL, '2023-11-21', 8200, 3, 3),
(NULL, '2023-11-23', 8300, 4, 3),
(NULL, '2023-11-24', 8400, 3, 3),
(NULL, '2023-11-25', 8500, 4, 3),
(NULL, '2023-11-25', 11999, 1, 4),
(NULL, '2023-12-30', 7800, 3, 5);



