<?php
include 'session.php';
?>
<!DOCTYPE html>
<html data-bs-theme="light" lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Profile - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;display=swap">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/Data-Table-styles.css">
    <link rel="stylesheet" href="assets/css/Data-Table.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/css/theme.bootstrap_4.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
    <link rel="stylesheet" href="assets/css/Ludens---1-Index-Table-with-Search--Sort-Filters-v20.css">
    <script src="scripts_user.js"></script>
</head>

<body id="page-top">
    <nav class="navbar navbar-expand bg-white shadow mb-4 topbar static-top navbar-light" style="background: rgb(52,131,225);">
        <div class="container-fluid"><a href="index.html"><img class="img-fluid" src="assets/img/LOGO_VARIACIONES/LOGO_SONQOLLAY.png" width="171" height="29"></a>
            <form class="d-none d-sm-inline-block me-auto ms-md-3 my-2 my-md-0 mw-100 navbar-search">
                <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Buscar"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
            </form>
            <ul class="navbar-nav flex-nowrap ms-auto">
                <li class="nav-item dropdown d-sm-none no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#"><i class="fas fa-search"></i></a>
                    <div class="dropdown-menu dropdown-menu-end p-3 animated--grow-in" aria-labelledby="searchDropdown">
                        <form class="me-auto navbar-search w-100">
                            <div class="input-group"><input class="bg-light form-control border-0 small" type="text" placeholder="Search for ...">
                                <div class="input-group-append"><button class="btn btn-primary py-0" type="button"><i class="fas fa-search"></i></button></div>
                            </div>
                        </form>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow mx-1">
                    <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#"><span class="badge bg-danger badge-counter">3+</span><i class="fas fa-bell fa-fw"></i></a>
                        <div class="dropdown-menu dropdown-menu-end dropdown-list animated--grow-in">
                            <h6 class="dropdown-header">Centro de notificaciones</h6><a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="me-3">
                                    <div class="bg-primary icon-circle"><i class="fas fa-file-alt text-white"></i></div>
                                </div>
                                <div><span class="small text-gray-500">December 12, 2019</span>
                                    <p>A new monthly report is ready to download!</p>
                                </div>
                            </a><a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="me-3">
                                    <div class="bg-success icon-circle"><i class="fas fa-donate text-white"></i></div>
                                </div>
                                <div><span class="small text-gray-500">December 7, 2019</span>
                                    <p>$290.29 has been deposited into your account!</p>
                                </div>
                            </a><a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="me-3">
                                    <div class="bg-warning icon-circle"><i class="fas fa-exclamation-triangle text-white"></i></div>
                                </div>
                                <div><span class="small text-gray-500">December 2, 2019</span>
                                    <p>Spending Alert: We've noticed unusually high spending for your account.</p>
                                </div>
                            </a><a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown no-arrow mx-1">
                    <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#"><span class="badge bg-danger badge-counter">7</span><i class="fas fa-envelope fa-fw"></i></a>
                        <div class="dropdown-menu dropdown-menu-end dropdown-list animated--grow-in">
                            <h6 class="dropdown-header">centro de mensajes</h6><a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="dropdown-list-image me-3"><img class="rounded-circle" src="assets/img/avatars/avatar4.jpeg">
                                    <div class="bg-success status-indicator"></div>
                                </div>
                                <div class="fw-bold">
                                    <div class="text-truncate"><span>Hi there! I am wondering if you can help me with a problem I've been having.</span></div>
                                    <p class="small text-gray-500 mb-0">Emily Fowler - 58m</p>
                                </div>
                            </a><a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="dropdown-list-image me-3"><img class="rounded-circle" src="assets/img/avatars/avatar2.jpeg">
                                    <div class="status-indicator"></div>
                                </div>
                                <div class="fw-bold">
                                    <div class="text-truncate"><span>I have the photos that you ordered last month!</span></div>
                                    <p class="small text-gray-500 mb-0">Jae Chun - 1d</p>
                                </div>
                            </a><a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="dropdown-list-image me-3"><img class="rounded-circle" src="assets/img/avatars/avatar3.jpeg">
                                    <div class="bg-warning status-indicator"></div>
                                </div>
                                <div class="fw-bold">
                                    <div class="text-truncate"><span>Last month's report looks great, I am very happy with the progress so far, keep up the good work!</span></div>
                                    <p class="small text-gray-500 mb-0">Morgan Alvarez - 2d</p>
                                </div>
                            </a><a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="dropdown-list-image me-3"><img class="rounded-circle" src="assets/img/avatars/avatar5.jpeg">
                                    <div class="bg-success status-indicator"></div>
                                </div>
                                <div class="fw-bold">
                                    <div class="text-truncate"><span>Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</span></div>
                                    <p class="small text-gray-500 mb-0">Chicken the Dog · 2w</p>
                                </div>
                            </a><a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                        </div>
                    </div>
                    <div class="shadow dropdown-list dropdown-menu dropdown-menu-end" aria-labelledby="alertsDropdown"></div>
                </li>
                <div class="d-none d-sm-block topbar-divider"></div>
                <li class="nav-item dropdown no-arrow">
                    <div class="nav-item dropdown no-arrow"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#">
                        <span class="d-none d-lg-inline me-2 text-gray-600 small">
                            <?php
                                $nombre_usuario = $_SESSION['nombre_usuario'] ?? '';
                                echo htmlspecialchars($nombre_usuario);
                            ?>
                        </span>
                        <img class="border rounded-circle img-profile" src="assets/img/avatars/avatar1.jpeg"></a>
                        <div class="dropdown-menu shadow dropdown-menu-end animated--grow-in">
                            <a class="dropdown-item" href="perfil.html">
                                <i class="fas fa-user fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Perfil</a>
                            <a class="dropdown-item" href="change-password.html">
                                <i class="fas fa-user-lock fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Cambiar contraseña</a>
                            <a class="dropdown-item" href="modulosA.html"><i class="fas fa-check-double fa-sm fa-fw me-2 text-gray-400"></i>Mis módulos&nbsp; aprobados</a>
                            <a class="dropdown-item" href="modulos.html"><i class="fas fa-pencil-alt fa-sm fa-fw me-2 text-gray-400"></i>Mis módulos&nbsp; por llevar</a>
                            <a class="dropdown-item" href="close.php"><i class="fas fa-sign-out-alt fa-sm fa-fw me-2 text-gray-400"></i>&nbsp;Salir</a></div>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    <div id="wrapper">
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <div class="container-fluid">
                    <h3 class="text-dark mb-4" style="text-align: center;">
                    Bienvenido
                    <span class="d-none d-lg-inline me-2 text-gray-600 small">
                            <?php
                                $nombre_completo = $_SESSION['nombre_completo_usuario'] ?? '';
                                echo htmlspecialchars($nombre_completo)
                            ?>
                        </span> 
                    </h3>
                </div>
                <section class="clean-block features">
                    <div class="container py-4 py-xl-5" style="display: block;">
                        <section style="padding-top: 40px;">
                            <div class="container" style="text-align: center;">
                                <h1>Modulos</h1>
                            </div>
                            <div class="row justify-content-center" style="margin-right: 0px;margin-left: 0px;">
                            <div class="col-sm-6 col-lg-4" style="margin-top: 35px;">
                                <div onclick="data_liderazgo()" class="card clean-card text-center" style="cursor: pointer;">
                                    <a href="preguntas.html"></script>
                                        <img class="img-fluid card-img-top w-100 d-block" src="assets/img/ÍCONOS/LIDERAZGO_SONQO.png" alt="Liderazgo">
                                    </a>
                                    <div class="card-body info">
                                        <h4 class="card-title">Liderazgo</h4>
                                    </div>
                                </div>
                                </div>
                                <div class="col-sm-6 col-lg-4" style="margin-top: 35px;">
                                    <div onclick="data_empatia()" class="card clean-card text-center" style="cursor: pointer;">
                                        <a href="preguntas.html">
                                            <img class="img-fluid card-img-top w-100 d-block" src="assets/img/ÍCONOS/EMPATÍA_SONQO.png" alt="Empatía">
                                        </a>
                                        <div class="card-body info">
                                            <h4 class="card-title">Empatía</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-4" style="margin-top: 35px;">
                                    <div onclick="data_resiliencia()" class="card clean-card text-center" style="cursor: pointer;">
                                        <a href="preguntas.html">
                                            <img class="img-fluid card-img-top w-100 d-block" src="assets/img/ÍCONOS/RESILIENCIA_SONQO.png" alt="Resiliencia">
                                        </a>
                                        <div class="card-body info">
                                            <h4 class="card-title">Resiliencia</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section style="padding-top: 40px;">
                            <div class="row justify-content-center" style="margin-right: 0px;margin-left: 0px;">
                                <div class="col-sm-6 col-lg-4" style="margin-top: 35px;">
                                    <div onclick="data_gestion_tiempo()" class="card clean-card text-center" style="cursor: pointer;">
                                        <a href="preguntas.html">
                                            <img class="img-fluid card-img-top w-100 d-block" src="assets/img/ÍCONOS/GESTIÓN_DEL_TIEMPO_SONQO.png" alt="Gestión del Tiempo">
                                        </a>
                                        <div class="card-body info">
                                            <h4 class="card-title">Gestión del tiempo</h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-lg-4" style="margin-top: 35px;">
                                <div onclick="datac_comunicacion_asertiva()" class="card clean-card text-center" style="cursor: pointer;">
                                    <a href="preguntas.html">
                                        <img class="img-fluid card-img-top w-100 d-block" src="assets/img/ÍCONOS/COMUNICACIÓN_ASERTIVA_SONQO.png" alt="Comunicación Asertiva">
                                    </a>
                                    <div class="card-body info">
                                        <h4 class="card-title">Comunicación Asertiva</h4>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </section>
            </div>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
    </div>
    <footer class="bg-white sticky-footer">
        <div class="container my-auto">
            <div class="text-center my-auto copyright"><span>Copyright © Brand 2023</span></div>
        </div>
    </footer>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/js/jquery.tablesorter.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/js/widgets/widget-filter.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.31.2/js/widgets/widget-storage.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="assets/js/Ludens---1-Index-Table-with-Search--Sort-Filters-v20-Ludens---1-Index-Table-with-Search--Sort-Filters.js"></script>
    <script src="assets/js/Ludens---1-Index-Table-with-Search--Sort-Filters-v20-Ludens---Material-UI-Actions.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>