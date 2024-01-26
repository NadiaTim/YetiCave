<?php
require_once('helpers.php');
require_once('data.php'); //убираем подключение к списку массивов
require_once('functions.php');
require_once('init.php'); //подключение к базе данных
$user_name = 'Надежда'; // укажите здесь ваше имя

//Проверка подключения к БД
if (!$con) {
    $error = mysqli_connect_error();
}

// Получение списка лотов
$sql = "SELECT * FROM lots"; //Текст SQL-запроса
$result = mysqli_query($con, $sql); //Ресурс результата выполниения SQL-запроса
//Проверка выполнения запроса
if (!$result) { 
    $error = mysqli_error($con);
}
$lots = mysqli_fetch_all($result, MYSQLI_ASSOC);//Преобразование ресурса результата в ассоциативный массив лотов



$main_content = include_template('main.php',[
    'categories'=>$categories, 
    'lots'=>$lots
]);

$layout_content = include_template('layout.php',[
    'content'=>$main_content,
    'user_name'=>$user_name,
    'categories'=>$categories,
    'title'=>'Главная страница'
]);

print($layout_content);