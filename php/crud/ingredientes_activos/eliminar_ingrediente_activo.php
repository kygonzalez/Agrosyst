<?php 
require_once '../../conexion.php';     
$cod_iac = $_POST['cod_iac'];

$inf = "SELECT agroquimicos.nom_agr FROM public.agroquimicos, public.ingredientes_activos
WHERE agroquimicos.cod_iac = ingredientes_activos.cod_iac
AND ingredientes_activos.cod_iac = '$cod_iac'";

$result1=pg_query($conexion,$inf);
$filas1=pg_num_rows($result1);
if($filas1 > 0 ){
	echo "utilizado";
}else{

$rev="DELETE FROM public.ingredientes_activos
WHERE cod_iac='$cod_iac'";
echo $result=pg_query($conexion,$rev);
}
?>