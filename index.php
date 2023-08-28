<?php
require_once('helpers.php');
require_once('data.php');
require_once('functions.php');
$user_name = 'Надежда'; // укажите здесь ваше имя

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