<?php
// Incluye el archivo de conexión a la base de datos
include 'coneccion.php';

// Verificar si se ha enviado el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recuperar los datos del formulario
    $email = $_POST["email"];
    $password = $_POST["password"];

    // Consulta para verificar las credenciales del usuario con consultas preparadas
    $sql = "SELECT id, correo, passwd FROM usuario WHERE correo = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    // Verificar las credenciales del usuario con password_verify
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['passwd'])) {
            // Credenciales válidas, redirigir o realizar alguna acción
            header("Location: usuario.html");
            exit();
        } else {
            // Credenciales inválidas, mostrar mensaje de error
            echo "Credenciales incorrectas. Por favor, intenta de nuevo.";
        }
    } else {
        // Correo electrónico no encontrado, mostrar mensaje de error
        echo "Credenciales incorrectas. Por favor, intenta de nuevo.";
    }

    // Cerrar la conexión
    $stmt->close();
}

// Cerrar la conexión
$conn->close();
?>
