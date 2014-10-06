<?php
/* @var $this TipoRespuestaController */
/* @var $model TipoRespuesta */

$this->breadcrumbs=array(
	'Tipo Respuestas'=>array('index'),
	$model->id_tipo_respuesta=>array('view','id'=>$model->id_tipo_respuesta),
	'Update',
);

?>

<h1>Actualizar Tipo de Respuesta <?php echo $model->id_tipo_respuesta; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>