<?php
include '../coneccion.php';


$sql = "SELECT * FROM gestion_tiempo";
$result = $conn->query($sql);


if (!$result) {
    die('Error en la consulta: ' . $conn->error);
}


$data = $result->fetch_all(MYSQLI_ASSOC);


$conn->close();


$data = json_decode(json_encode($data, JSON_UNESCAPED_UNICODE), true);


$filename = 'datos_gestion_tiempo.json';


file_put_contents($filename, json_encode($data, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));


echo 'Archivo JSON generado exitosamente: ' . $filename;
?>
