<?php
/* @var $this CaracteristicaProcesoController */
/* @var $model CaracteristicaProceso */

$this->breadcrumbs=array(
	'Caracteristica Procesos'=>array('index'),
	$model->id_caracteristica_proceso=>array('view','id'=>$model->id_caracteristica_proceso),
	'Update',
);

$this->menu=array(
	array('label'=>'List CaracteristicaProceso', 'url'=>array('index')),
	array('label'=>'Create CaracteristicaProceso', 'url'=>array('create')),
	array('label'=>'View CaracteristicaProceso', 'url'=>array('view', 'id'=>$model->id_caracteristica_proceso)),
	array('label'=>'Manage CaracteristicaProceso', 'url'=>array('admin')),
);
?>

<h1>Update CaracteristicaProceso <?php echo $model->id_caracteristica_proceso; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>