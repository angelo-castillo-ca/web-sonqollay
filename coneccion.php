<?php
$servername = "localhost";
$username = "sonqollay";
$password = "s0nQ0Ll4y";
$dbname = "sonqollay";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}
?>
