function actualizar_tabla(){
	$('#tab_agroquimicos').load('../php/componentes/componentes_agroquimicos/tab_agroquimicos.php');
}

function qualityString(data) {

	var res = false;
		for (var i = 0; i < data.length; i++) {
			var comp = data.charAt(i).toUpperCase();
			var num_let = false;
			if (comp >= '0' && comp <= '9') {
				num_let = true;
			}
			if (comp >= 'A' && comp <= 'Z') {
				num_let = true;
			}
			if (comp == " ") {
				num_let = true;
			}
			if (num_let == false) {
				return false;
			}
		}
		return res;
	}


	function verificar_num_let(data) {
				var let = false;
				var num = false;
			for (var i = 0; i < data.length; i++) {
				var comp = data.charAt(i).toUpperCase();
			
				if (comp >= '0' && comp <= '9') {
					num = true;
				}
				if (comp >= 'A' && comp <= 'Z') {
					let = true;
				}				
			}if (num==false || let == false) {
				return false;
			}else
			return true;
		}
//---------------------------------------------------------Guardar agroquímico--------------------------------------------//
function guardar_agro(){
	cod_agr=$('#cod_agr').val();
	nom_agr=$('#nom_agr').val();
	pre_agr=$("#pre_agr").val();  
	dos_agr=$('#dos_agr').val();
	res = verificar_num_let(dos_agr);
	des_ins= nom_agr+" " +pre_agr;
	rap_agr=$('#rap_agr').val().replace(/(\r\n|\n|\r)/gm," ");
	pcr_agr=$('#pcr_agr').val();
	pen_agr=$('#pen_agr').val();
	pro_agr=$('#pro_agr').val();
	cod_for=$('#cod_for').val();
	cod_tag=$('#cod_tag').val();
	cod_tox=$('#cod_tox').val();
	cod_unm=$('#uni_med').val();
	cod_iac=$('#cod_iac').val();
	fun_agr=$('#fun_agr').val();
	add_rus_agr = cadena_mostrar_rus;


	cadena='cod_agr='+ cod_agr.trim()+
   '&nom_agr='+ nom_agr +' - '+pre_agr +
   '&des_ins='+ des_ins +
   '&dos_agr='+ dos_agr +
   '&rap_agr='+ rap_agr +
   '&pcr_agr='+ pcr_agr +
   '&pen_agr='+ pen_agr +
   '&pro_agr='+ pro_agr +
   '&cod_for='+ cod_for +
   '&cod_tag='+ cod_tag +
   '&cod_tox='+ cod_tox +
   '&cod_unm='+ cod_unm +
   '&cod_iac='+ cod_iac +
   '&fun_agr='+ fun_agr+ 
   '&add_rus_agr='+ add_rus_agr;

   
   d_alert= "";

	if(cod_agr != "" && nom_agr != "" && pre_agr != "" && pcr_agr != "" && pen_agr != "" && pro_agr != "" && cod_for != "" && cod_tag != "" 
	&& cod_tox != "" && cod_unm != "" && cod_iac != "" &&fun_agr != "" && tip_uni_med != ""){

		imp_alert = false;
		if(nom_agr.length > 50){

			$('#div_nom_agr').removeClass("input-group input-group-alternative");
			imp_alert=true;

			toastr.error('Nombre del agroquímico demasiado extenso',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});
		}else{
			$('#div_nom_agr').addClass("input-group input-group-alternative");
		}

		if(pre_agr.length > 5){

			$('#div_pre_agr').removeClass("input-group input-group-alternative");
			imp_alert=true;

			toastr.error('Presentación demasiado extensa',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});
		}else{
			$('#div_pre_agr').addClass("input-group input-group-alternative");
		}

		if(rap_agr.length > 200){

			imp_alert=true;

			toastr.error('Sugerencia de aplicación demasiado extensa',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});
		}

		if(pen_agr.length > 4){

			$('#div_pen_agr').removeClass("input-group input-group-alternative");
			imp_alert=true;

			toastr.error('El periodo de carencia debe contener menos de 4 dígitos',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});
		}else{
			$('#div_pen_agr').addClass("input-group input-group-alternative");
		}

		if(pcr_agr.length > 4){

			$('#div_pcr_agr').removeClass("input-group input-group-alternative");
			imp_alert=true;

			toastr.error('El periodo de re-entrada debe contener menos de 4 dígitos',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});
		}else{
			$('#div_pcr_agr').addClass("input-group input-group-alternative");
		}


	if(res == false){

		
			$('#div_dos_agr').removeClass("input-group input-group-alternative");
		

		toastr.error('Ejemplo: 1L/Ha','Por favor ingrese una dosis valida',{
			"positionClass": "toast-bottom-right",
			"closeButton": false,
			"progressBar": true
		});
		}else{
			$('#div_dos_agr').addClass("input-group input-group-alternative");

			if(imp_alert == false){
				crear_agroquimico(cadena);
			}
			
		}

	}else{

		alert_i = false;
		if(nom_agr == ""){

			$('#div_nom_agr').removeClass("input-group input-group-alternative");
			alert_i=true;
		}else{
			$('#div_nom_agr').addClass("input-group input-group-alternative");
		}

		if(pre_agr == ""){

			$('#div_pre_agr').removeClass("input-group input-group-alternative");
			alert_i=true;
		}else{
			$('#div_pre_agr').addClass("input-group input-group-alternative");
		}

		if(dos_agr == ""){

			$('#div_dos_agr').removeClass("input-group input-group-alternative");
			alert_i=true;
		}else{
			$('#div_dos_agr').addClass("input-group input-group-alternative");
		}

		if(pen_agr == ""){

			$('#div_pen_agr').removeClass("input-group input-group-alternative");
			alert_i=true;
		}else{
			$('#div_pen_agr').addClass("input-group input-group-alternative");
		}

		if(pcr_agr == ""){

			$('#div_pcr_agr').removeClass("input-group input-group-alternative");
			alert_i=true;
		}else{
			$('#div_pcr_agr').addClass("input-group input-group-alternative");
		}

		if(pro_agr == null){
			d_alert= d_alert+"¿Prohibido por el ICA? \n";
		}

		if(cod_for == null){
			d_alert= d_alert+"Formulación \n";
		}

		if(cod_tag == null){
			d_alert= d_alert+"Tipo de agroquímico \n";
		}

		if(cod_tox == null){
			d_alert= d_alert+"Nivel de toxicidad \n";
		}

		if(cod_unm == null){
			d_alert= d_alert+"Unidad de medida \n";
		}

		if(cod_iac == null){
			d_alert= d_alert+"Ingrediente activo \n";
		}

		if(cod_iac == null){
			d_alert= d_alert+"Función del agroquímico \n";
		}

		if(d_alert != ""){

			swal("Por favor escoja opcion en:",d_alert, "warning");

		}else{
			if(alert_i==true){

			toastr.error('Por favor no deje campos vacíos.'+'',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});

			}
		}
		

}
}

cadena_mostrar_rus= "";

function cargarTablaAdd(cad){
	//alert("envia: "+cad);
	if(cad != "_"){
	datos=cad.split('_');
	cod_agr = datos[0];
	rus_agr = datos[1];
	if(rus_agr.length > 200){

		toastr.error('Recomendación de uso demasiado extensa',{
			"positionClass": "toast-bottom-right",
			"closeButton": false,
			"progressBar": true
		});
	}else{
		cadena_mostrar_rus = cadena_mostrar_rus + cod_agr + "~"  + rus_agr + "||";
		mostrarTablaAdd(cadena_mostrar_rus);
	}
	
	}else{
		toastr.error('El campo está vacío.','',{
            "positionClass": "toast-bottom-right",
            "closeButton": false,
            "progressBar": true
        });
	}
}

function mostrarTablaAdd(){
	document.getElementById('rus_agr').value="";
	ajax = objetoAjax();
	ajax.open("POST","../php/componentes/componentes_agroquimicos/tab_rus_add.php",true);
	ajax.onreadystatechange = function(){
		if(ajax.readyState==4){
			document.getElementById("tab_rus_agre").innerHTML = ajax.responseText;
			$(function() {
				$('[data-toggle="tooltip"]').tooltip()
			})

		}
	}
	ajax.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	ajax.send("cad="+ cadena_mostrar_rus);

}

function rem_rus(rus_agr) {

	sep = cadena_mostrar_rus.split('||');
	indice = 0;
	found = false;
  
	for (i = 0; i < sep.length - 1; i++) {
		sepr = sep[i].split('~');
  
		for (e = 0; e < sepr.length; e++) {
			if (rus_agr == sepr[e]) {
				indice = i;
				found = true;
				break;
			}
		}
  
		if (found == true) {
			break;
		}
	}
  
	if (found == true) {
		cadena_mostrar_rus = "";
  
		for (i = 0; i < sep.length - 1; i++) {
  
			if (indice != i) {
				cadena_mostrar_rus = cadena_mostrar_rus + sep[i] + "||";
			}
		}
  
	}
  
	mostrarTablaAdd(cadena_mostrar_rus);
  
  }

function crear_agroquimico(cadena){	 

    $.ajax({
     type:"post",
     url:"../php/crud/agroquimicos/agregar_agroquimico.php",
     data:cadena,
     success:function(r){
		 if(r.includes('Resource id')){			 
			swal('Agroquímico agregado!',' ', 'success');			 
			 actualizar_tabla();
			 setTimeout ("location.reload();", 1500);
			 

       }else{
		swal("Ocurrio un error, no se guardo el agroquímico."," ", "error");
	   }
     }
   });

 }

 //-----------------------------------------------------Actualizar agroquímico--------------------------------------------//

function llenarform(datos){

	data= datos.split('||');
	$('#modal-agr-up').modal('toggle');
	
	sep =data[2].split("-");
	$('#nom_agr_up').val(sep[0]);
	$('#pre_agr_up').val(sep[1]); //dividir
	$('#cod_iac_up').val(data[13]);
	$('#cod_tag_up').val(data[14]);
	$('#fun_agr_up').val(data[4]);
	$('#cod_for_up').val(data[15]);
	$('#pcr_agr_up').val(data[8]);
	$('#dos_agr_up').val(data[16]);
	$('#pro_agr_up').val(data[10]);
	$('#cod_tox_up').val(data[17]);
	$('#tip_uni_med_up').val(data[18]);
	$('#pen_agr_up').val(data[9]);
	$('#des_ins_up').val(data[20]);
	$('#rap_agr_up').val(data[21]);

	global = data[0].trim();
	global1 = data[1].trim();
}

function preloaderup(){
	
	
	cod_agr = global;
	cod_ins = global1;
	nom_agr=$('#nom_agr_up').val();
	pre_agr=$("#pre_agr_up").val();  
	dos_agr=$('#dos_agr_up').val();
	res = verificar_num_let(dos_agr);
	des_ins=$('#des_ins_up').val();
	rap_agr=$('#rap_agr_up').val().replace(/(\r\n|\n|\r)/gm," ");
	pcr_agr=$('#pcr_agr_up').val();
	pen_agr=$('#pen_agr_up').val();
	pro_agr=$('#pro_agr_up').val();
	cod_for=$('#cod_for_up').val();
	cod_tag=$('#cod_tag_up').val();
	cod_tox=$('#cod_tox_up').val();
	cod_unm=$('#uni_med_up').val();
	cod_iac=$('#cod_iac_up').val();
	fun_agr=$('#fun_agr_up').val();

	d_alert= "";

	if(cod_agr != "" && nom_agr != "" && pre_agr != "" && pcr_agr != "" && pen_agr != "" && pro_agr != "" && cod_for != "" && cod_tag != "" 
	&& cod_tox != "" && cod_unm != "" && cod_iac != "" &&fun_agr != ""){

		imp_alert = false;
		if(nom_agr.length > 50){
			
			imp_alert=true;

			toastr.error('Nombre del agroquímico demasiado extenso',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});
		}

		if(pre_agr.length > 5){

			imp_alert=true;

			toastr.error('Presentación demasiado extensa',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});
		}

		if(rap_agr.length > 200){

			imp_alert=true;

			toastr.error('Sugerencia de aplicación demasiado extensa',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});
		}

		if(pen_agr.length > 4){
			imp_alert=true;

			toastr.error('El periodo de carencia debe contener menos de 4 dígitos',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});
		}

		if(pcr_agr.length > 4){

			imp_alert=true;

			toastr.error('El periodo de re-entrada debe contener menos de 4 dígitos',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});
		}


	if(res == false){

		toastr.error('Ejemplo: 1L/Ha','Por favor ingrese una dosis valida',{
			"positionClass": "toast-bottom-right",
			"closeButton": false,
			"progressBar": true
		});
		}else{
			if(imp_alert == false){

				jQuery('#form-up-agroq').hide();
				jQuery('#preloaderup').show();


				setTimeout ("actualizar_agroquimico(cod_agr,cod_ins,nom_agr,pre_agr,dos_agr,des_ins,rap_agr,pcr_agr,pen_agr,pro_agr,cod_for,cod_tag,cod_tox,cod_unm,cod_iac,fun_agr);", 1000);	
			}
			
		}

	}else{

		alert_i = false;
		if(nom_agr == ""){

			alert_i=true;
		}

		if(pre_agr == ""){

			alert_i=true;
		}

		if(dos_agr == ""){

			alert_i=true;
		}
		if(pen_agr == ""){

			alert_i=true;
		}

		if(pcr_agr == ""){

			alert_i=true;
		}

		if(pro_agr == null){
			d_alert= d_alert+"¿Prohibido por el ICA? \n";
		}

		if(cod_for == null){
			d_alert= d_alert+"Formulación \n";
		}

		if(cod_tag == null){
			d_alert= d_alert+"Tipo de agroquímico \n";
		}

		if(cod_tox == null){
			d_alert= d_alert+"Nivel de toxicidad \n";
		}

		if(cod_iac == null){
			d_alert= d_alert+"Ingrediente activo \n";
		}

		if(cod_iac == null){
			d_alert= d_alert+"Función del agroquímico \n";
		}

		if(d_alert != ""){

			swal("Por favor escoja opcion en:",d_alert, "warning");

		}else{
			if(alert_i==true){

			toastr.error('Por favor no deje campos vacíos.'+'',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});

			}
		}
		

}

	
}

function actualizar_agroquimico(cod_agr,cod_ins,nom_agr,pre_agr,dos_agr,des_ins,rap_agr,pcr_agr,pen_agr,pro_agr,cod_for,cod_tag,cod_tox,cod_unm,cod_iac,fun_agr){
	cadena ="cod_agr="+global.trim()+
	"&cod_ins="+global1.trim()+
	"&nom_agr="+nom_agr+' - '+pre_agr +
	"&pre_agr="+pre_agr+
	"&dos_agr="+dos_agr+
	"&des_ins="+des_ins+
	"&rap_agr="+rap_agr+
	"&pcr_agr="+pcr_agr+
	"&pen_agr="+pen_agr+
	"&pro_agr="+pro_agr+
	"&cod_for="+cod_for+
	"&cod_tag="+cod_tag+
	"&cod_tox="+cod_tox+
	"&cod_unm="+cod_unm+
	"&cod_iac="+cod_iac+
	"&fun_agr="+fun_agr;
	//alert("cadena "+cadena);
	$.ajax({
		type:"post",
		url:"../php/crud/agroquimicos/actualizar_agroquimico.php",
		data:cadena,
		success:function(r){
			//alert(r);
			if(r.includes('Resource id')){
				swal("¡Agroquímico Editado!"," ", "success");

                var forme = document.querySelector('#form-up-agroq');
                forme.reset();
                $('#modal-agr-up').modal('hide');
                jQuery('#preloaderup').hide();
				jQuery('#form-up-agroq').show();
				$('#tab_agroquimicos').load('../php/componentes/componentes_agroquimicos/tab_agroquimicos.php');
		}else{
			//alert(r); 
			jQuery('#preloaderup').hide();
			jQuery('#form-up-agroq').show();
			$('#tab_agroquimicos').load('../php/componentes/componentes_agroquimicos/tab_agroquimicos.php');        
		}
	}
});
}

//------------------------Edición y eliminación de recomendaciones-----------------//
function editarRecomendaciones(){

	$('#modal-suge-dos').modal('toggle');
	//$('#modal-agr-up').modal('hide');
	
		ajax = objetoAjax();
		ajax.open("POST","../php/componentes/componentes_agroquimicos/tabs_actualizar_rus.php",true);
		ajax.onreadystatechange = function(){
			if(ajax.readyState==4){
				document.getElementById("mostrar-tablas-rec").innerHTML = ajax.responseText;
				$(function() {
					$('[data-toggle="tooltip"]').tooltip()
				})
			}
		}
		ajax.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		ajax.send("cod_agr="+global);
}
	
	function actualizarRec(dato){
	
		nuevo=$('#reco').val();
		if(nuevo != ""){
		cadena='reco='+ dato+
		'&nuevo='+ nuevo;
		$.ajax({
			type:"post",
			url:"../php/crud/agroquimicos/actualizar_recomendacion.php",
			data:cadena,
			success:function(r){
				if(r.includes('Resource id')){
					toastr.success('¡Recomendación actualizada!','',{
						"positionClass": "toast-bottom-right",
						"closeButton": false,
						"progressBar": true
					});
	   
			  }else{
			   swal("Ocurrio un error."," ", "error");
			  }
			}
		  });
		}else{
			toastr.error('Por favor no deje el campo vacío.','',{
				"positionClass": "toast-bottom-right",
				"closeButton": false,
				"progressBar": true
			});
		}
	
	}
	
	function quitarRec(dato){	
		
		cadena='reco='+ dato;
		$.ajax({
			type:"post",
			url:"../php/crud/agroquimicos/eliminar_recomendacion.php",
			data:cadena,
			success:function(r){
				//alert(r);
				if(r.includes('Resource id')){
					toastr.success('¡Recomendación eliminada!','',{
						"positionClass": "toast-bottom-right",
						"closeButton": false,
						"progressBar": true
					});
					
					$('#modal-suge-dos').modal('hide');
	   
			  }else{
			   swal("Ocurrio un error."," ", "error");
			  }
			}
		  });
	
	}
	
	function agregarRec(){
	
		nuevo=$('#rus_agr').val().replace(/(\r\n|\n|\r)/gm," ");
		cadena='cod_agr='+ global.trim()+
		'&nuevo='+ nuevo;
		$.ajax({
			type:"post",
			url:"../php/crud/agroquimicos/agregar_recomendacion.php",
			data:cadena,
			success:function(r){
				//alert(r);
				if(r.includes('Resource id')){
					toastr.success('¡Recomendación agregada!','',{
						"positionClass": "toast-bottom-right",
						"closeButton": false,
						"progressBar": true
					});
					
					$('#modal-suge-dos').modal('hide');
					$('#tab_agroquimicos').load('../php/componentes/componentes_agroquimicos/tab_agroquimicos.php');
	   
			  }else{
			   swal("Ocurrio un error."," ", "error");
			  }
			}
		  });
	
	}
	
	

//-------------------------------------------------Eliminar agroquímico-------------------------------------------------//

function eliminar_agroquimico(datos) {
    cod = datos.split('||');
    cod_ins = cod[1];
    cod_agr = cod[0];

    swal({
            title: "¿Estás seguro?",
            text: "¿Deseas eliminar este agroquímico?",
            icon: "warning",
            buttons: true,
            dangerMode: false,
        })
        .then((willDelete) => {
            if (willDelete) {
                cadena = "cod_ins=" + cod_ins.trim() +
                    "&cod_agr=" + cod_agr.trim();

                $.ajax({
                    type: "post",
                    url: "../php/crud/agroquimicos/comprobar_agroquimico.php",
                    data: cadena,
                    success: function(r) {
                        if (r.trim() == "") {
                            $.ajax({
                                type: "post",
                                url: "../php/crud/agroquimicos/eliminar_agroquimico.php",
                                data: cadena,
                                success: function(res) {
                                    //alert(res);
                                    if (res.includes('Resource id')) {

                                        swal("El agroquímico se eliminó!", {
                                            icon: "success",
                                        });
                                        setTimeout ("location.reload();", 1000);
                                    }
                                }
                            });
                        } else {
                            swal(r, {
                                icon: "info",
                            });
                        }
                    }
                });
            } else {
                swal("¡Cancelado!");
            }
        });
}
 //--------------------------------------------------Inicio---------------------------------------------------------//
 function objetoAjax(){
	var xmlhttp= false;
	try {
	  xmlhttp = new  ActiveXObject("MsxmL2.XMLHTTP");
	}catch(e){
	  try{
		xmlhttp = new  ActiveXObject("Microsoft.XMLHTTP");
	  }catch(E){
		xmlhttp = false;
	  }
	}
	if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
	  xmlhttp = new XMLHttpRequest();
	}
	return xmlhttp;
  }


  function cargarAgro(){

	swal("¡Agregarás un agroquímico!","Recuerda que toda la información la podrás encontrar en la etiqueta del producto.", "");

		$('#div-btn-add').hide();
		$('#crear_agroq').load('../php/componentes/componentes_agroquimicos/add_agroquimicos.php');
	}

function cancelar(){

	swal({
		title: "¿Estás seguro?",
		text: "Se perderá la información que has registrado",
		icon: "warning",
		buttons: true,
		dangerMode: true,
	  })
	  .then((willDelete) => {
		if (willDelete) {
		$('#tab_agroquimicos').load('../php/componentes/componentes_agroquimicos/tab_agroquimicos.php');
         var form = document.querySelector('#form-add-agr');
         form.reset();
         jQuery('#preloader').hide();
         jQuery('#form-add-agr').show();
		 $('#modal-form').modal('hide');
		 document.getElementById("crear_agroq").innerHTML = "";
		 $('#div-btn-add').show();
		}
	  });

}	

$(document).ready(function(){
  
	jQuery('#ver2').hide();
	$('#date-hour').load('../php/componentes/menu/date-hour.php');
	$('#actions-lg-scr').load('../php/componentes/menu/actions-lg-scr.php');
	$('#actions-sm-scr').load('../php/componentes/menu/actions-sm-scr.php');
	$('#menu').load('../php/componentes/menu/menu.php');
	$('#tab_agroquimicos').load('../php/componentes/componentes_agroquimicos/tab_agroquimicos.php');
	$('#tab_rus').load('../php/componentes/componentes_agroquimicos/tab_recom_uso.php');

	$('#nom_agr').keydown(function(){
    	$('#div_nom_agr').addClass("input-group input-group-alternative");
	});
	
	$('#pre_agr').keydown(function(){
    	$('#div_pre_agr').addClass("input-group input-group-alternative");
	});
	
	$('#dos_agr').keydown(function(){
    	$('#div_dos_agr').addClass("input-group input-group-alternative");
	});
	
	$('#pen_agr').keydown(function(){
    	$('#div_pen_agr').addClass("input-group input-group-alternative");
	});
	
	$('#pcr_agr').keydown(function(){
    	$('#div_pcr_agr').addClass("input-group input-group-alternative");
	});
	

	$("#myInput").on("keyup", function() {
        var value = $(this).val().toLowerCase();
        $("#myTable tr").filter(function() {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
	});  
	
	$('#modal-suge-dos').on('hidden.bs.modal', function (e) {
		$('#modal-agr-up').modal('hide');
		setTimeout ("$('#modal-agr-up').modal('toggle');", 500);
		
	  });
	  
		$("#guardar_agrob").on("click",function(event){
		//event.preventDefault();
	 });
  });

  function cerrar_menu() {
	$('#sidenav-main').remove();
	jQuery('#ver1').hide();
	jQuery('#ver2').show();
  }

	