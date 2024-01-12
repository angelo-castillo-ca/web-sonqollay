<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$email = $_POST['email'];
$contraseña = $_POST['password'];
session_start();

include 'connection.php';

$consulta = "SELECT id, Passwd FROM User WHERE Email='$email'";
$resultado = mysqli_query($connection, $consulta);

$filas = mysqli_num_rows($resultado);

if ($filas > 0) {
    $row = mysqli_fetch_assoc($resultado);
    $hashedPassword = $row['Passwd'];
    
    // Verifica la contraseña proporcionada con la función password_verify
    if (password_verify($contraseña, $hashedPassword)) {
        $_SESSION['user_id'] = $row['id']; // Guarda el ID del usuario en una variable de sesión
        header("Location: user/index.html");
    } else {
        echo "Error en la autenticación, datos incorrectos";
    }
} else {
    echo "Error en la autenticación";
}

mysqli_free_result($resultado);
mysqli_close($connection);
?>
