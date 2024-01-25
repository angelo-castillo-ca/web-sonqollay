<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);


session_start();


if (isset($_SESSION['user_id'])) {
    $userId = intval($_SESSION['user_id']);

    
    
    include '../coneccion.php';

    $sql = "SELECT id, nombres,apellidos FROM usuario WHERE id = ?";
    $stmt = $conn->prepare($sql);

    if (!$stmt) {
        die("Error en la preparación de la consulta: " . $conn->error);
    }

    $stmt->bind_param("i", $userId);
    $stmt->execute();
    $result = $stmt->get_result();

    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();

        
        $_SESSION['nombre_usuario'] = $row['nombres'];
        $_SESSION['nombre_completo_usuario'] = $row['nombres'] . ' ' . $row['apellidos'];
    } else {
        
        echo "Error: No se encontró el usuario.";
    }

    $stmt->close();
    $conn->close();
} else {
    
    header("Location: login.php");
    exit();
}
?>
