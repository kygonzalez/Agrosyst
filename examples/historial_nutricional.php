<?php
session_start();
if (isset($_SESSION['usuario'])) { 
    // comprobación de dias de logueo ###########################
  date_default_timezone_set('America/Bogota');
  $d = date("d");
  $m = date("m");
  $y = date("Y");
  $fecha_act=$y."-".$m."-".$d;

  function calcularTiempo($fi,$ff){
    $fecha1= date_create($fi);
    $fecha2= date_create($ff);
    $intervalo= date_diff($fecha1,$fecha2);

    $tiempo=array();
    foreach ($intervalo as $valor) {
      $tiempo[]=$valor;
    }

    return $tiempo;
  }

  $datos = calcularTiempo($_SESSION['fecha_log'],$fecha_act);

  if ($datos[2] != 0) {
   header('location:../php/logout1.php');
 }
// #############################################################
}else{
  header('location:login.php');
}
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
    <meta name="author" content="Creative Tim">
    <title>Agrosyst</title>
    <!-- Favicon -->
    <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!-- Icons -->
    <link href="../assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
    <link href="../assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
    <!-- Argon CSS -->
    <link type="text/css" href="../assets/css/argon.css?v=1.0.0" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../assets/css/scrollbar.css">
    <!-- jquery -->
    <script src="../assets/jquery/jquery-3.4.1.min.js"></script>
    <!-- sweet_alert -->
    <script src="../assets/sweetalert/sweetalert.min.js"></script>
    <!-- toastr -->
    <script src="../assets/toastr/toastr.min.js"></script>
    <link type="text/css" href="../assets/toastr/toastr.css" rel="stylesheet">

</head>
</head>

<body>
    <!-- Sidenav -->
    <nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white " id="sidenav-main">
        <div class="container-fluid">
            <!-- Toggler -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main"
                aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Brand -->
            <a class="navbar-brand pt-0" href="../home.php">
                <img src="../assets/img/brand/agrosyst.gif" class="navbar-brand-img" alt="...">
            </a>
            <!-- User -->
            <ul class="nav align-items-center d-md-none" id="actions-sm-scr">

            </ul>
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                <!-- Collapse header -->
                <div class="navbar-collapse-header d-md-none">
                    <div class="row">
                        <div class="col-6 collapse-brand">
                            <a href="index.html">
                                <img src="../assets/img/brand/agrosyst.gif">
                            </a>
                        </div>
                        <div class="col-6 collapse-close">
                            <button type="button" class="navbar-toggler" data-toggle="collapse"
                                data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false"
                                aria-label="Toggle sidenav">
                                <span></span>
                                <span></span>
                            </button>
                        </div>
                    </div>
                </div>
                <div id="menu">

                </div>
            </div>
    </nav>
    <!-- Main content -->
    <div class="main-content">
        <!-- Top navbar -->
        <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
            <div class="container-fluid">
                <!-- Brand -->
                <?php 
          require '../php/conexion.php';
          $ide_ter= $_SESSION['ide_finca'];
          $sql="SELECT fincas.cod_fin,fincas.nom_fin,fincas.det_fin,departamento.nom_dep,municipio.nom_mun,
          fincas.med_fin,unidad_de_medida.des_unm,terceros.ide_ter,terceros.pno_ter,terceros.sno_ter,terceros.pap_ter,terceros.sap_ter
          FROM public.fincas, public.departamento, public.unidad_de_medida, public.terceros, 
          public.municipio, public.duenio, public.tipo_unidad_medida
          WHERE municipio.cod_dep=departamento.cod_dep AND fincas.cod_mun=municipio.cod_mun 
          AND fincas.cod_unm=unidad_de_medida.cod_unm AND unidad_de_medida.cod_tum=tipo_unidad_medida.cod_tum 
          AND fincas.ide_ter=terceros.ide_ter AND terceros.ide_ter=duenio.ide_ter and fincas.cod_fin='$ide_ter'";
          $result=pg_query($conexion,$sql);
          $finca=pg_fetch_row($result);
          ?>
                <a class="h2 mb-0 text-white text-uppercase  d-lg-inline-block"><?php echo $finca[1]." "?><i
                        class="fas fa-angle-right"></i> Historial Nutricional</a>
                <!-- Form -->
                <form class="navbar-search navbar-search-dark form-inline mr-3 d-md-flex ml-lg-auto">
                    <div class="form-group mb-0" id="date-hour">
                    </div>
                </form>
                <!-- User -->
                <ul class="navbar-nav align-items-center d-none d-md-flex" id="actions-lg-scr">

                </ul>
            </div>
        </nav>
        <!-- Header -->
        <!-- Header -->
        <div class="header pb-8 pt-5 pt-md-8"
            style="background: url('../assets/img/theme/fertilizantes.jpg'); no-repeat; background-size: cover;">
            <span class="mask bg-gradient-fito opacity-8"></span>
            <div class="container-fluid">
                <div class="header-body">
                    <!-- Card stats -->
                    <div class="row" style="width=50px;">
                        <br>
                        <br>
                        <br>
                        <br>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page content -->
        <div class="container-fluid mt--7">

            <!-- Table -->
            <div class="row">
                <div class="col-md-1">
                </div>
                <div class="col-md-10">
                    <div class="card shadow">

                        <div class="card-header border-0">
                            <div class="float-md-left" style="margin-top: 5px;">
                                <div class="float-md-left" style="margin-top: 5px;">
                                    <div class="form-group mb-3">
                                        <div class="input-group input-group-alternative">
                                            <select id="cod_cul" class="form-control" data-live-search="true"
                                                onchange="mostrar_tabla();">
                                                <option value="0" disabled selected>Selecciona Cultivo</option>
                                                <?php 
                                                $codi_fin=$_SESSION['ide_finca'];
                                                require '../php/conexion.php';
                                                $query="SELECT cultivos.cod_cul, nombre_cultivo.des_ncu , lotes.nom_lot ,cultivos.npl_cul
                                                FROM public.fincas, public.lotes, public.cultivos, public.nombre_cultivo
                                                WHERE fincas.cod_fin=lotes.cod_fin AND lotes.cod_lot=cultivos.cod_lot
                                                AND nombre_cultivo.cod_ncu=cultivos.cod_ncu and fincas.cod_fin='$codi_fin'";
                                                $result =pg_query($conexion,$query);
                                                while ($ver=pg_fetch_row($result)) {
                                                ?>
                                                <option value="<?php echo $ver[0] ?>">
                                                    <?php $array=explode("-", $ver[1]); echo $array[1]." - ".$ver[2]." - ".$ver[3]." Plantas"?>
                                                </option>

                                                <?php 
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="float-md-right" style="margin-top: 5px;">
                                <input class="form-control" placeholder="Buscar en la tabla" id="myInput" type="text"
                                    autocomplete="off">
                            </div>
                        </div>
                        <div class="table-responsive" id="tab_nutricion">

                            <h3 style="font-family:'FontAwesome',tahoma; font-size: 14px;" align="center">
                                Por favor escoja un cultivo para vizualizar la información.
                            </h3>

                        </div>
                    </div>
                </div>
                <div class="col-md-1">
                </div>
            </div>
        </div>
    </div>
    <!-- Argon Scripts -->
    <!-- Core -->
    <script src="../assets/vendor/jquery/dist/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Argon JS -->
    <script src="../assets/js/argon.js?v=1.0.0"></script>
    <!-- funciones -->
    <script src="../js/funciones_nutricion.js"></script>

</body>

</html>