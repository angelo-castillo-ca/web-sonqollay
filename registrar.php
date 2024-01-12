<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $email = $_POST['email'];
    $password = $_POST['passwd'];
    if (empty($nombre) || empty($apellido) || empty($email) || empty($password)) {
        echo "Por favor, complete todos los campos.";
    } else {
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
        include 'connection.php';
        $stmt = $connection->prepare("INSERT INTO User (Nombre, Apellido, Email, Passwd) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("ssss", $nombre, $apellido, $email, $hashedPassword);
        if ($stmt->execute()) {
            echo "Registro exitoso. ¡Bienvenido!";
            echo '<script>
                    setTimeout(function() {
                        window.location.href = "user/login.html";
                    }, 1000);
                  </script>';
        } else {
            echo '<script>alert("Error en el registro. Inténtelo nuevamente.");</script>';
        }
        $stmt->close();
        $connection->close();
    }
}
?>
