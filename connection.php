<?php
$host = 'localhost';
$db = 'sonqollay';
$user = 'root';
$pass = '';

// Conecta a la base de datos
$connection = new mysqli($host, $user, $pass, $db);

// Verifica la conexión
if ($connection->connect_error) {
    die("Conexión fallida: " . $connection->connect_error);
}
?>
