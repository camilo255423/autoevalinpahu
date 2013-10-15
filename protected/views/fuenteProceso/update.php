<?php
/* @var $this FuenteProcesoController */
/* @var $model FuenteProceso */

$this->breadcrumbs=array(
	'Fuente Procesos'=>array('index'),
	$model->id_fuente_proceso=>array('view','id'=>$model->id_fuente_proceso),
	'Update',
);

$this->menu=array(
	array('label'=>'List FuenteProceso', 'url'=>array('index')),
	array('label'=>'Create FuenteProceso', 'url'=>array('create')),
	array('label'=>'View FuenteProceso', 'url'=>array('view', 'id'=>$model->id_fuente_proceso)),
	array('label'=>'Manage FuenteProceso', 'url'=>array('admin')),
);
?>

<h1>Update FuenteProceso <?php echo $model->id_fuente_proceso; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>