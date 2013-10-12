<?php
/* @var $this FactorProcesoController */
/* @var $model FactorProceso */

$this->breadcrumbs=array(
	'Factor Procesos'=>array('index'),
	$model->id_factor_proceso=>array('view','id'=>$model->id_factor_proceso),
	'Update',
);

$this->menu=array(
	array('label'=>'List FactorProceso', 'url'=>array('index')),
	array('label'=>'Create FactorProceso', 'url'=>array('create')),
	array('label'=>'View FactorProceso', 'url'=>array('view', 'id'=>$model->id_factor_proceso)),
	array('label'=>'Manage FactorProceso', 'url'=>array('admin')),
);
?>

<h1>Update FactorProceso <?php echo $model->id_factor_proceso; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>