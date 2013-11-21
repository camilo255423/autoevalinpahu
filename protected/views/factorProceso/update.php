<?php
/* @var $this FactorProcesoController */
/* @var $model FactorProceso */

$this->breadcrumbs=array(
	'Factor Procesos'=>array('index'),
	$model->id_factor_proceso=>array('view','id'=>$model->id_factor_proceso),
	'Update',
);

$this->menu=array(
	array('label'=>'Listar Factores', 'url'=>array('index')),
	array('label'=>'Crear Factor', 'url'=>array('create')),
);
?>

<h1>Actualizar Factor <?php echo $model->id_factor_proceso; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>