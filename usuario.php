<?php
// Iniciar o reanudar la sesión
session_start();

// Verificar si hay una sesión activa
if (!isset($_SESSION['user_id'])) {
    // Si no hay una sesión activa, redirigir al login con un mensaje
    header("Location: login.php?error=1");
    exit();
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página del Usuario</title>
</head>
<body>
    <?php
    // Mostrar el contenido solo si hay una sesión activa
    echo "<h1>Bienvenido, Usuario!</h1>";
    ?>

    <!-- Agrega aquí el resto del contenido de tu página -->

    <!-- Enlace para cerrar sesión -->
    <a href="logout.php">Cerrar sesión</a>
</body>
</html>
