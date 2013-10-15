<?php
/* @var $this FuenteProcesoController */
/* @var $model FuenteProceso */

$this->breadcrumbs=array(
	'Fuente Procesos'=>array('index'),
	$model->id_fuente_proceso,
);

$this->menu=array(
	array('label'=>'List FuenteProceso', 'url'=>array('index')),
	array('label'=>'Create FuenteProceso', 'url'=>array('create')),
	array('label'=>'Update FuenteProceso', 'url'=>array('update', 'id'=>$model->id_fuente_proceso)),
	array('label'=>'Delete FuenteProceso', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_fuente_proceso),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage FuenteProceso', 'url'=>array('admin')),
);
?>

<h1>View FuenteProceso #<?php echo $model->id_fuente_proceso; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_fuente_proceso',
		'nombre',
		'descripcion',
		'enunciado',
		'id_proceso',
	),
)); ?>
