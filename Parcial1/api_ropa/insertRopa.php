<?php
header("Content-Type: application/json");

if($_SERVER['REQUEST_METHOD'] !== 'POST'){
    http_response_code(405);
    echo json_encode(['error' => 'Solo metodo POST es permitido']);
}

//conectar a la BD sakila
require 'conexionSakila.php';

$data = json_decode(file_get_contents('php://input'), true);
$tipo = $data['tipo'];
$seccion = $data['seccion'];
$precio = $data['precio'];
$talla = $data['talla'];

$query = $conn->prepare("INSERT INTO ropa (tipo, seccion, precio,talla) VALUES (?, ?)");

if(!$query){
    http_response_code(500);
    echo json_encode(["error" => "Ocurrio un error"]);
    exit;
}

$query->bind_param("ss", $first_name, $last_name);

if($query->execute()){
    echo json_encode(["mensaje" => "ropa insertada correctamente", "ropa_id" => $query->insert_id]);
} else {
    http_response_code(500);
    echo json_encode(["error" => "Fallo la inserción" . $query->error]);
}

$query->close();
$conn->close();

?>