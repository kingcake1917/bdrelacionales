<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'GET'){
        http_response_code(405);
        echo json_encode(['error' => 'solo metodo GET es permitido']);
    }

    //coneccion tienda
    require 'conexionSakila.php';

    $data = json_decode(file_get_contents('php://input'), true);

    //cambiar por sus datos
    $sql="SELECT * FROM ropa";
    $results= $conn->query($sql);

    $ropas = [];

    if($results && $results->num_rows > 0){
        while($row = $results->fetch_assoc()){
            $ropas[] = $row;
        }
    }

    $conn->close();

    header("Content-Type: application/json");
    echo json_encode($ropas);
    //probar http://localhost/api/getRopa.php
?>