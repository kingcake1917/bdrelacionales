<?php
    header("Content-Type: application/json");
    
    if($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo PUT es permitido']);
    }

     //conectar a la BD sakila
    require 'conexionSakila.php';

    $input = json_decode(file_get_contents('php://input'), true);
    $ropa_id = $input['ropa_id'];
    $tipo = $conn->real_escape_string($input['tipo']);
    $seccion = $conn->real_escape_string($input['seccion']);
    $precio = $conn->real_escape_string($input['precio']);
    $talla = $conn->real_escape_string($input['talla']);
    $query = "UPDATE ropa SET tipo = ?, seccion = ?, precio = ?, talla = ? WHERE id = ?";

    $st = $conn-> prepare($query);

    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error" . $conn->error]);
        exit();
    }

    $st->bind_param("ssisi", $tipo, $seccion, $precio, $talla, $ropa_id);

    if($st->execute()){
        if($st->affected_rows > 0){
            echo json_encode(["mensaje" => "ropa insertada correctamente", "ropa_id" => $st->insert_id]);
        } 
    } else {
        http_response_code(500);
        echo json_encode(["error" => "Fallo la insercion" . $st->error]);
    }

    $st->close();
    $conn->close();

?>