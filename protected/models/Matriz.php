<?php
class Matriz{




public static $SQLNumeroRespuestasPositivasPorCaracteristica=
'select numero_caracteristica, fuente.nombre as nombre_fuente, count(*) as numero_respuestas from fuente,fuente_proceso,respuesta,opciones_respuesta,caracteristica_pregunta_proceso,caracteristica_proceso
 where fuente.id_fuente=fuente_proceso.id_fuente 
 and fuente_proceso.id_fuente_proceso=respuesta.id_fuente_proceso 
 and respuesta.id_opcion=opciones_respuesta.id_opcion 
 and opciones_respuesta.valor in (5,4,3) 
 and id_tipo_respuesta=1 
 and respuesta.id_pregunta_proceso=caracteristica_pregunta_proceso.id_pregunta_proceso 
 and caracteristica_pregunta_proceso.id_caracteristica_proceso=caracteristica_proceso.id_caracteristica_proceso 
 and fuente_proceso.id_proceso = :id_proceso     
 group by numero_caracteristica, nombre_fuente';

 public static $SQLNumeroTotalDeRespuestasPorCaracteristica=
"select numero_caracteristica, fuente.nombre as nombre_fuente, count(*) as numero_respuestas from fuente,fuente_proceso,respuesta,opciones_respuesta,caracteristica_pregunta_proceso,caracteristica_proceso
 where fuente.id_fuente=fuente_proceso.id_fuente 
 and fuente_proceso.id_fuente_proceso=respuesta.id_fuente_proceso 
 and respuesta.id_opcion=opciones_respuesta.id_opcion 
 and respuesta.id_pregunta_proceso=caracteristica_pregunta_proceso.id_pregunta_proceso 
 and caracteristica_pregunta_proceso.id_caracteristica_proceso=caracteristica_proceso.id_caracteristica_proceso 
 and id_tipo_respuesta=1 
 and fuente_proceso.id_proceso = :id_proceso   
 group by numero_caracteristica, nombre_fuente";


static function getNumeroRespuestasPositivasPorCaracteristica($id_proceso){
	$sql = Yii::app()->db->createCommand(Matriz::$SQLNumeroRespuestasPositivasPorCaracteristica);
	$sql->bindValue(":id_proceso",$id_proceso);
	$rows = $sql->queryAll();
	$datos=array();
	foreach ($rows as $row) {
		$datos[$row["numero_caracteristica"]][$row["nombre_fuente"]]=$row["numero_respuestas"];
	
	}
	return $datos;

}

static function getNumeroTotalDeRespuestasPorCaracteristica($id_proceso){
	$sql = Yii::app()->db->createCommand(Matriz::$SQLNumeroTotalDeRespuestasPorCaracteristica);
	$sql->bindValue(":id_proceso",$id_proceso); 
	$rows = $sql->queryAll();
	$datos=array();
	foreach ($rows as $row) {
		$datos[$row["numero_caracteristica"]][$row["nombre_fuente"]]=$row["numero_respuestas"];
	
	}
	return $datos;

}


	
}



?>