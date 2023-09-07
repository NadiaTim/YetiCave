<?php
function price_format ($price) {
    $price=ceil($price);

    if ($price>=1000){
        $price=number_format($price,0,'',' ');
    } 
    $price = $price.' ₽';
    return $price;
};

function get_dt_range ($date_finish) {
    date_default_timezone_set('Europe/Moscow');
    $date_finish = date_create($date_finish);
    $date_now = date_create();

    $diff = date_diff($date_finish, $date_now);
    $format_diff = date_interval_format($diff, "%d %H %I");
    $arr = explode(" ", $format_diff);

    $arr[1] = $arr[1] + $arr[0] * 24;
    $arr[1] = str_pad($arr[1], 2, "0", STR_PAD_LEFT);

    $arr[2] = str_pad($arr[2], 2, "0", STR_PAD_LEFT);
    unset($array[0]);
    return $arr;
};