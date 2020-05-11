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
  header('location:../login.php');
}

$_SESSION['saber'] = false;

if (isset($_POST['cargar'])) {
 $_SESSION['saber'] = true;  
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
    <link rel="stylesheet" type="text/css" href="../assets/css/scrollbar.css">
    <!-- Argon CSS -->
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link type="text/css" href="../assets/css/argon.css?v=1.0.0" rel="stylesheet">
    <!-- jquery -->
    <script src="../assets/jquery/jquery-3.4.1.min.js"></script>
    <!-- sweet_alert -->
    <script src="../assets/sweetalert/sweetalert.min.js"></script>
    <!-- toastr -->
    <script src="../assets/toastr/toastr.min.js"></script>
    <link type="text/css" href="../assets/toastr/toastr.css" rel="stylesheet">
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
            <!-- User -->
            <ul class="nav align-items-center d-md-none" id="actions-sm-scr">

            </ul>
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                <!-- Collapse header -->
                <div class="navbar-collapse-header d-md-none">
                    <div class="row">
                        <div class="col-6 collapse-brand">
                            <a href="../index.html">
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
                <!-- Navigation -->
                <div id="menu">

                </div>
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
        public.municipio, public.dueño, public.tipo_unidad_medida
        WHERE municipio.cod_dep=departamento.cod_dep AND fincas.cod_mun=municipio.cod_mun 
        AND fincas.cod_unm=unidad_de_medida.cod_unm AND unidad_de_medida.cod_tum=tipo_unidad_medida.cod_tum 
        AND fincas.ide_ter=terceros.ide_ter AND terceros.ide_ter=dueño.ide_ter and fincas.cod_fin='$ide_ter'";
        $result=pg_query($conexion,$sql);
        $finca=pg_fetch_row($result);
        ?>
                <a class="h2 mb-0 text-white text-uppercase  d-lg-inline-block"><?php echo $finca[1]." "?><i
                        class="fas fa-angle-right"></i> Plagas & Enfermedades</a>
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
        <div class="header pb-8 pt-5 pt-md-8"
            style="background: url('../assets/img/theme/plaga.jpg'); no-repeat; background-size: cover;">
            <span class="mask bg-gradient-fito opacity-8"></span>
            <!------------------------------------------------Creacion de plagao enfermedad------------------------------------------->
            <div class="container-fluid" id="crear_enf_pla">
                <br>
                <br>
                
            </div>
        </div>
        <!-- Page content -->
        <div class="container-fluid mt--7" id="tab_pla">
            <!------------------------------------------------------------------- Table ------------------------------------------------------->
            <div class="row">
                <div class="col">
                    <div class="card shadow">
                        <div class="card-header border-0">
                            <div class="float-md-left" style="margin-top: 5px;" name="div-btn-add-enf" id="div-btn-add-enf">
                                <button type="button" class="btn btn-default" data-toggle="modal"
                                    data-target="#modal-form" style="font-family:'FontAwesome',tahoma; font-size: 11px;" onclick="cargarVentana()">Agregar</button>
                                    
                                 
                            </div>
                            <div class="float-md-right" style="margin-top: 5px;">
                                <input class="form-control" placeholder="Buscar en la tabla" id="myInput" type="text"
                                    autocomplete="off">
                            </div>
                            <div class="text-center" style="margin-top: 5px;">
                            <a href="#" onclick="cambiarTabla('P')" style="font-family:'FontAwesome',tahoma; font-size: 13px;">Plagas</a>
                            <a href="#" onclick="cambiarTabla('E')" style="font-family:'FontAwesome',tahoma; font-size: 13px;"> | Enfermedades</a>
                            </did>
                        </div>
                        <div class="table-responsive" id="tab_enfermedades">
                        </div>
                        <div class="table-responsive" id="tab_plagas">
                        </div>
                        
                    </div>
                </div>
            </div>

            <!------------------------------- Modal para escoger las partes afectadas de la planta------------------------------------- -->
            <div class="col-md-4">
                <div class="modal fade" id="modal-partes-afe" tabindex="-1" role="dialog" aria-labelledby="modal-form"
                    aria-hidden="true">
                    <div class="modal-dialog modal- modal-dialog-centered modal-sm" role="document">
                        <div class="modal-content">
                            <div class="modal-body p-0">
                                <div class="card bg-secondary shadow border-0">
                                    <a href="#" data-dismiss="modal" aria-label="Close"
                                        style="margin: 10px 20px 0 0; text-align: right;">
                                        <span aria-hidden="true" style="left: 0;">×</span>
                                    </a>
                                    <div class="card-body px-lg-5 py-lg-5">
                                        <div class="text-center text-muted mb-4">
                                            <h3>Agregar Partes</h3>
                                        </div>
                                        <form role="form" id="form-add-partes">

                                            <p align='center'>Por favor escoja todas las partes que son afectadas
                                                por la plaga o enfermedad en registro.</p>
                                            <label><input type="checkbox" name="frutos" id="frutos" name="frutos">
                                                Frutos</label><br>
                                            <label><input type="checkbox" name="tallo" id="tallo" name="tallo">
                                                Tallo</label><br>
                                            <label><input type="checkbox" name="hojas" id="hojas" name="hojas">
                                                Hojas</label><br>
                                            <label><input type="checkbox" name="flores" id="flores" name="flores">
                                                Flores</label><br>
                                            <label><input type="checkbox" name="raiz" id="raiz" name="raiz">
                                                Raíz</label><br>
                                            <label><input type="checkbox" name="enves" id="enves" name="enves">
                                                Enves de la hojas</label><br>
                                            <label><input type="checkbox" name="aerea" id="aerea" name="aerea">
                                                Parte aérea de la planta</label><br>

                                            <div class="text-center">
                                                <button type="button" class="btn btn-default my-4" id="btn_save1"
                                                    onclick="guardarPartes();" style="font-family:'FontAwesome',tahoma; font-size: 11px;">Guardar</button>
                                            </div>
                                        </form>
                                        <img src="../assets/img/icons/preloader.gif" id="preloader"
                                            style="margin: 10px auto;">
                                        <script>
                                        jQuery('#preloader').hide();
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!------------------------------- Modal para escoger etapas de la planta en que es afectada------------------------------------- -->
            <div class="col-md-4">
                <div class="modal fade" id="modal-etapas-afe" tabindex="-1" role="dialog" aria-labelledby="modal-form"
                    aria-hidden="true">
                    <div class="modal-dialog modal- modal-dialog-centered modal-sm" role="document">
                        <div class="modal-content">
                            <div class="modal-body p-0">
                                <div class="card bg-secondary shadow border-0">
                                    <a href="#" data-dismiss="modal" aria-label="Close"
                                        style="margin: 10px 20px 0 0; text-align: right;">
                                        <span aria-hidden="true" style="left: 0;">×</span>
                                    </a>
                                    <div class="card-body px-lg-5 py-lg-5">
                                        <div class="text-center text-muted mb-4">
                                            <h3>Agregar Etapas</h3>
                                        </div>
                                        <form role="form" id="form-add-etapas">

                                            <p align='center'>Por favor escoja todas las etapas de la planta en las que
                                                son afectadas
                                                por la plaga o enfermedad en registro.</p>
                                            <label><input type="checkbox" name="vegetativo" id="vegetativo">
                                                Crecimiento</label><br>
                                            <label><input type="checkbox" name="ifloracion" id="ifloracion">
                                                Inicio de floración</label><br>
                                            <label><input type="checkbox" name="mfloracion" id="mfloracion">
                                                Máxima floración</label><br>
                                            <label><input type="checkbox" name="fructificacion" id="fructificacion">
                                                Inicio de fructificación</label><br>
                                            <label><input type="checkbox" name="cosecha" id="cosecha">
                                                Cosecha</label>

                                            <div class="text-center">
                                                <button type="button" class="btn btn-default my-4" id="btn_save2"
                                                    onclick="guardarEtapas();" style="font-family:'FontAwesome',tahoma; font-size: 11px;">Guardar</button>
                                            </div>
                                        </form>
                                        <div class="col-12">
                                            <img src="../assets/img/icons/preloader.gif" id="preloader1"
                                                style="margin: 10px auto;">
                                        </div>
                                        <script>
                                        jQuery('#preloader1').hide();
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!------------------------------- Modal para escoger sintomas presentados---------------------------------------------------- -->
            <div class="col-md-4">
                <div class="modal fade" id="modal-sintomas" tabindex="-1" role="dialog" aria-labelledby="modal-form"
                    aria-hidden="true">
                    <div class="modal-dialog modal- modal-dialog-centered modal-sm" role="document">
                        <div class="modal-content">
                            <div class="modal-body p-0">
                                <div class="card bg-secondary shadow border-0">
                                    <a href="#" data-dismiss="modal" aria-label="Close"
                                        style="margin: 10px 20px 0 0; text-align: right;">
                                        <span aria-hidden="true" style="left: 0;">×</span>
                                    </a>
                                    <div class="card-body px-lg-5 py-lg-5">
                                        <div class="text-center text-muted mb-4">
                                            <h3>Agregar Sintomas</h3>
                                        </div>
                                        <form role="form" id="form-add-sintomas">

                                            <div>
                                                <p align='center'>Por favor escoja los sintomas presentados por la
                                                    planta a causa de
                                                    la plaga o enfermedad en registro.</p>
                                                <?php 
                                                $like = $_SESSION['idusuario'];
                                                $sin = "SELECT cod_sin, det_sin
                                                FROM public.sintomas_afe
                                                WHERE cod_sin LIKE '$like%' or cod_sin LIKE '1-%'";
                                                $result=pg_query($conexion,$sin);
                                                $datos = "";
                                                $valores = "";
                                                while($ver=pg_fetch_row($result)){
                                                    $datos = $datos."~".$ver[0];
                                                    $valores = $valores."~".$ver[1];

                                                ?>
                                                <label><input type="checkbox" name="<?php echo $ver[0] ?>"
                                                        id="<?php echo $ver[0] ?>">
                                                    <?php echo $ver[1] ?></label><br>
                                                <?php 
                                                }
                                            ?>
                                            </div>                                           

                                            <div class="text-center">
                                                <button type="button" class="btn btn-default my-4" id="btn_save3" style="font-family:'FontAwesome',tahoma; font-size: 11px;"
                                                    onclick="guardarSintomas('<?php echo $datos ?>','<?php echo $valores ?>');">Guardar</button>
                                            </div>
                                        </form>
                                        <img src="../assets/img/icons/preloader.gif" id="preloader2"
                                            style="margin: 10px auto;">
                                        <script>
                                        jQuery('#preloader2').hide();
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Footer -->
            <footer class="footer">
                <div class="row align-items-center justify-content-xl-between">
                    <div class="col-xl-6">
                        <div class="copyright text-center text-xl-left text-muted">
                            &copy; 2019 <a href="#" class="font-weight-bold ml-1" target="_blank">Agrosyst</a>
                        </div>
                    </div>
                    <div class="col-xl-6">
                        <ul class="nav nav-footer justify-content-center justify-content-xl-end">
                            <li class="nav-item">
                                <a href="#" class="nav-link" target="_blank">Ver manual</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link" target="_blank">Sobre nosotros</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <!-- Argon Scripts -->
    <!-- Core -->
    <script src="../assets/vendor/jquery/dist/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <!-- Argon JS -->
    <script src="../assets/js/argon.js?v=1.0.0"></script>
    <!-- funciones -->
    <script src="../js/funciones_plagas_enfermedades.js"></script>
</body>

</html>