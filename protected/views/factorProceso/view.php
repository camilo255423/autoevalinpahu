<?php
/* @var $this FactorProcesoController */
/* @var $model FactorProceso */

$this->breadcrumbs=array(
	'Factor Procesos'=>array('index'),
	$model->id_factor_proceso,
);

$this->menu=array(
	array('label'=>'List FactorProceso', 'url'=>array('index')),
	array('label'=>'Create FactorProceso', 'url'=>array('create')),
	array('label'=>'Update FactorProceso', 'url'=>array('update', 'id'=>$model->id_factor_proceso)),
	array('label'=>'Delete FactorProceso', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_factor_proceso),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage FactorProceso', 'url'=>array('admin')),
);
?>

<h1>View FactorProceso #<?php echo $model->id_factor_proceso; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_factor_proceso',
		'id_proceso',
		'titulo',
		'descripcion',
		'numero_factor',
	),
)); ?>
