<?php
/* @var $this PreguntaProcesoController */
/* @var $model PreguntaProceso */

$this->breadcrumbs=array(
	'Pregunta Procesos'=>array('index'),
	$model->id_pregunta_proceso,
);

$this->menu=array(
	array('label'=>'List PreguntaProceso', 'url'=>array('index')),
	array('label'=>'Create PreguntaProceso', 'url'=>array('create')),
	array('label'=>'Update PreguntaProceso', 'url'=>array('update', 'id'=>$model->id_pregunta_proceso)),
	array('label'=>'Delete PreguntaProceso', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_pregunta_proceso),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage PreguntaProceso', 'url'=>array('admin')),
);
?>

<h1>View PreguntaProceso #<?php echo $model->id_pregunta_proceso; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_pregunta_proceso',
		'enunciado',
		'id_tipo_respuesta',
	),
)); ?>
