<!DOCTYPE html>
<html data-bs-theme="light" lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Inter.css">
</head>

<body>
    <!-- Start: Navbar Centered Links -->
    <nav class="navbar navbar-expand-md sticky-top py-3 navbar-dark" id="mainNav" style="background: rgb(52,131,225);">
        <div class="container"><a class="navbar-brand d-flex align-items-center" href="/"></a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse border-1" id="navcol-1"><a href="index-user.php"><img class="border rounded-pill" src="assets/img/sonqollay.png" style="margin-left: 0px;" width="200"></a>
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item"><a class="nav-link active" href="index-user.php">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="services-user.php">Modulos</a></li>
                    <li class="nav-item"><a class="nav-link" href="pricing-user.php">Precios</a></li>
                    <li class="nav-item"><a class="nav-link" href="contacts-user.php">Contactanos</a></li>
                    <li class="nav-item"><a class="nav-link" href="contacts-user.php">Record</a></li>
                </ul>
                <a class="border rounded-pill border-2 shadow-none" href="user/login.html" style="width: 88px;height: 40px;margin: 2px;padding: 4px;text-align: center;font-weight: bold;color: rgb(255,255,255);">Salir</a>
                <a class="nav-link" style="width: 250px;height: 40px;text-align: center;margin: 0px;padding: 4px;font-weight: bold;color: rgb(255,255,255);">
                    <?php
                    session_start();
                    include 'connection.php';

                    // Verifica si el usuario está autenticado
                    if (!isset($_SESSION['user_id'])) {
                        header("Location: login.php"); // Redirige al usuario a la página de inicio de sesión si no está autenticado
                        exit();
                    }

                    $user_id = $_SESSION['user_id']; // Obtiene el ID del usuario desde la variable de sesión

                    $sql = "SELECT Nombre, Apellido FROM User WHERE id = $user_id"; // Usa el ID del usuario en la consulta SQL
                    $result = $connection->query($sql);

                    if ($result->num_rows > 0) {
                        $row = $result->fetch_assoc();
                        $nombre = $row["Nombre"];
                        $apellido = $row["Apellido"];
                    } else {
                        $nombre = "No se encontraron datos";
                        $apellido = "";
                    }

                    echo $nombre . " " . $apellido;
                    ?>
                </a>
            </div>
        </div>
    </nav><!-- End: Navbar Centered Links -->
    <header class="text-center bg-dark" style="text-align: center;"></header><!-- Start: Brands -->
    <section class="py-5">
        <div class="container text-center py-5"><img class="img-thumbnail img-fluid" src="assets/img/BANNER%201_Mesa%20de%20trabajo%201.png"><a href="#"> </a></div><!-- Start: Features Cards -->
        <div class="container py-5">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <p class="fw-bold text-success mb-2">Nuestros servicios</p>
                    <h2 class="fw-bold">¿Qué&nbsp;podemos ofrecerte?</h2>
                    <p class="text-muted">Un desarrollo con mejoras constantes&nbsp;</p>
                </div>
            </div>
            <div class="mx-auto" style="max-width: 900px;">
                <div class="row row-cols-1 row-cols-md-2 d-flex justify-content-center">
                    <div class="col mb-4">
                        <div class="card bg-primary-light">
                            <div class="card-body text-center px-4 py-5 px-md-5">
                                <p class="fw-bold text-primary card-text mb-2">Habilidades Blandas</p>
                                <h5 class="fw-bold card-title mb-3">Mejora tus habilidades de desarrollo social para mejorar tu conectividad con el mundo</h5><a class="btn btn-primary btn-sm" role="button" href="projects.html">Me interesa</a>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-4">
                        <div class="card bg-secondary-light">
                            <div class="card-body text-center px-4 py-5 px-md-5">
                                <p class="fw-bold text-secondary card-text mb-2">Aprendisaje</p>
                                <h5 class="fw-bold card-title mb-3">Diferentes formas de aprender algo nuevo de una manera muy fácil e interactiva</h5><a class="btn btn-secondary btn-sm" role="button" href="services.html">Me interesa</a>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-4">
                        <div class="card bg-info-light">
                            <div class="card-body text-center px-4 py-5 px-md-5">
                                <p class="fw-bold text-info card-text mb-2">Precios</p>
                                <h5 class="fw-bold card-title mb-3">Precios accesibles para todos</h5><a class="btn btn-info btn-sm" role="button" href="pricing.html">Me interesa</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- End: Features Cards -->
    </section><!-- End: Brands -->
    <section></section><!-- Start: Newsletter Subscription Color -->
    <section class="py-5">
        <div class="container">
            <div class="bg-dark border rounded border-dark d-flex flex-column justify-content-between align-items-center flex-lg-row p-4 p-lg-5">
                <div class="text-center text-lg-start py-3 py-lg-1">
                    <h2 class="fw-bold mb-2">Suscríbete para novedades</h2>
                    <p class="mb-0">Recibirás lo mejor de lo mejor</p>
                </div>
                <form class="d-flex justify-content-center flex-wrap flex-lg-nowrap" method="post">
                    <div class="my-2"><input class="border rounded-pill shadow-sm form-control" type="email" name="email" placeholder="Your Email"></div>
                    <div class="my-2"><button class="btn btn-primary shadow ms-2" type="submit">Suscribete</button></div>
                </form>
            </div>
        </div>
    </section><!-- End: Newsletter Subscription Color -->
    <!-- Start: Footer Multi Column -->
    <footer class="bg-dark">
        <div class="container py-4 py-lg-5">
            <hr>
            <div class="text-muted d-flex justify-content-between align-items-center pt-3">
                <p class="mb-0">Copyright © 2023 SONQOLLAY</p>
                <ul class="list-inline mb-0">
                    <li class="list-inline-item"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-facebook">
                            <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"></path>
                        </svg></li>
                    <li class="list-inline-item"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-twitter">
                            <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"></path>
                        </svg></li>
                    <li class="list-inline-item"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-instagram">
                            <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"></path>
                        </svg></li>
                </ul>
            </div>
        </div>
    </footer><!-- End: Footer Multi Column -->
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bold-and-dark.js"></script>
</body>

</html>