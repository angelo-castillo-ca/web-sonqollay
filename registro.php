<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'coneccion.php';


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    
    $firstName = $_POST['nombres'];
    $lastName = $_POST['apellidos'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $verifyPassword = $_POST['verifyPassword'];

    
    if ($password != $verifyPassword) {
        echo "Las contraseñas no coinciden. Por favor, inténtalo de nuevo.";
        exit();
    }

    
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    
    $sql = "INSERT INTO usuario (nombres, apellidos, correo, passwd) VALUES ('$firstName', '$lastName', '$email', '$hashedPassword')";

    if ($conn->query($sql) === TRUE) {
        
        header("Location: confirmacion_registro.php");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}


$conn->close();
?>
