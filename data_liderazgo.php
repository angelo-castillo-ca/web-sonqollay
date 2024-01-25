<?php
include 'coneccion.php';

try {
    
    $sql = "SELECT * FROM liderazgo";
    $result = $conn->query($sql);

    
    if (!$result) {
        throw new Exception('Error en la consulta: ' . $conn->error);
    }

    
    $data = $result->fetch_all(MYSQLI_ASSOC);

    
    $conn->close();

    
    $data = json_decode(json_encode($data, JSON_UNESCAPED_UNICODE), true);

    
    $filename = 'datos_liderazgo.json';

    
    file_put_contents($filename, json_encode($data, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT));

    
    echo json_encode(array('success' => true, 'message' => 'Archivo JSON generado exitosamente: ' . $filename));
} catch (Exception $e) {
    
    echo json_encode(array('success' => false, 'message' => 'Error: ' . $e->getMessage()));
} finally {
    
    if (isset($conn)) {
        $conn->close();
    }
}
?>
