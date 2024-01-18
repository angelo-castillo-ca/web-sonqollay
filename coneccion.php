<?php
$servername = "localhost";
$username = "root";
$password = "mysql";
$dbname = "sonqollay";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
} else {
    echo "Conexión exitosa";
    // Puedes realizar consultas o manipular la base de datos aquí
}

// Cerrar la conexión
?>
