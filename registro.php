<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
// Include the database connection file
include 'coneccion.php';

// Check if the form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the form data
    $firstName = $_POST['nombres'];
    $lastName = $_POST['apellidos'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $verifyPassword = $_POST['verifyPassword'];
 
    // Validate the data
    if ($password != $verifyPassword) {
        echo "Las contraseñas no coinciden. Por favor, inténtalo de nuevo.";
        exit();
    }

    // Hash de la contraseña (puedes usar algoritmos más seguros en un entorno de producción)
    $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

    // Insert data into the database
    $sql = "INSERT INTO usuario (nombres, apellidos, correo, passwd) VALUES ('$firstName', '$lastName', '$email', '$hashedPassword')";

    if ($conn->query($sql) === TRUE) {
        echo "Usuario registrado exitosamente";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close the database connection (optional since PHP automatically closes it at the end of the script)
$conn->close();
?>
