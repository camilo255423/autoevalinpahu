<?php
/* @var $this OpcionesRespuestaController */
/* @var $model OpcionesRespuesta */

$this->breadcrumbs=array(
	'Opciones Respuestas'=>array('index'),
	$model->id_opcion,
);

$this->menu=array(
	array('label'=>'List OpcionesRespuesta', 'url'=>array('index')),
	array('label'=>'Create OpcionesRespuesta', 'url'=>array('create')),
	array('label'=>'Update OpcionesRespuesta', 'url'=>array('update', 'id'=>$model->id_opcion)),
	array('label'=>'Delete OpcionesRespuesta', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_opcion),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage OpcionesRespuesta', 'url'=>array('admin')),
);
?>

<h1>View OpcionesRespuesta #<?php echo $model->id_opcion; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_opcion',
		'respuesta',
		'valor',
		'id_tipo_respuesta',
	),
)); ?>
