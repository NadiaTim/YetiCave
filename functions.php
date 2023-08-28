<?php
function price_format ($price) {
    $price=ceil($price);

    if ($price>=1000){
        $price=number_format($price,0,'',' ');
    } 
    $price = $price.' ₽';
    return $price;
};