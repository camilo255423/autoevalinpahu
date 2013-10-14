<?php
/* @var $this CaracteristicaProcesoController */
/* @var $model CaracteristicaProceso */

$this->breadcrumbs=array(
	'Caracteristica Procesos'=>array('index'),
	$model->id_caracteristica_proceso,
);

$this->menu=array(
	array('label'=>'List CaracteristicaProceso', 'url'=>array('index')),
	array('label'=>'Create CaracteristicaProceso', 'url'=>array('create')),
	array('label'=>'Update CaracteristicaProceso', 'url'=>array('update', 'id'=>$model->id_caracteristica_proceso)),
	array('label'=>'Delete CaracteristicaProceso', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_caracteristica_proceso),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage CaracteristicaProceso', 'url'=>array('admin')),
);
?>

<h1>View CaracteristicaProceso #<?php echo $model->id_caracteristica_proceso; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_caracteristica_proceso',
		'titulo',
		'descripcion',
		'numero',
		'id_factor_proceso',
	),
)); ?>
