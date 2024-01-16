function dataliderazgo() {
    // Realizar solicitud fetch al archivo PHP
    fetch('data_liderazgo.php')
        .then(response => response.json())
        .then(data => {
            // Aquí puedes manejar los datos obtenidos del archivo PHP
            console.log(data);
        })
        .catch(error => {
            console.error('Error al obtener datos:', error);
        });
}
