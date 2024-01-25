<?php

error_reporting(E_ALL);
ini_set('display_errors', 1);


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include 'coneccion.php';
    
    $email = $_POST["email"];
    $password = $_POST["password"];

    
    $sql = "SELECT id, correo, passwd FROM usuario WHERE correo = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['passwd'])) {
            
            session_start();
            $_SESSION['user_id'] = $row['id'];

            
            header("Location: user/confirmacion_ingreso.php");
            exit();
        } else {
            
            echo "Credenciales incorrectas. Por favor, intenta de nuevo.";
        }
    } else {
        
        echo "Credenciales incorrectas. Por favor, intenta de nuevo.";
    }

    
    $stmt->close();
    $conn->close();
}
?>
