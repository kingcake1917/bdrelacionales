<?php
    header("Content-Type: application/json");
    header("Access-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "santiago", "correo" => "kingcake1917@gmail.com"],
        ["id" => 1, "nombre" => "paolo", "correo" => "bigmoneyp@gmail.com"],
        ["id" => 1, "nombre" => "bayron", "correo" => "bayronb23AAA@gmail.com"],
    ];

    echo json_encode($usuarios);

?>