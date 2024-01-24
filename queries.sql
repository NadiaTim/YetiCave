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
