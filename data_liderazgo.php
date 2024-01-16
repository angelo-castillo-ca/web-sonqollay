<?php
include 'conexion.php';

// Consulta SQL para obtener datos de la tabla liderazgo
$sql = "SELECT * FROM liderazgo";
$result = $conn->query($sql);

// Obtener los resultados como un array asociativo y convertirlo a formato JSON
$data = $result->fetch_all(MYSQLI_ASSOC);
echo json_encode($data);

// Cerrar la conexión
$conn->close();
?>
