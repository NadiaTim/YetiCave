<?php
function price_format ($price) {
    $price=ceil($price);

    if ($price>=1000){
        $price=number_format($price,0,'',' ');
    } 
    $price = $price.' ₽';
    return $price;
};

function get_dt_range ($date) {
    date_default_timezone_set('Europe/Moscow');
    $date_finish = date_create($date);
    $date_now = date_create("now");

    $diff = date_diff($date_finish, $date_now);
    $format_diff = date_interval_format($diff, "%d %H %I");
    $arr = explode(" ", $format_diff);

    $houres = $arr[1] + $arr[0] * 24;
    $res[] = str_pad($houres, 2, "0", STR_PAD_LEFT);

    $minutes = intval($arr[2]);
    $res[] = str_pad($minutes, 2, "0", STR_PAD_LEFT);
    return $res;
};