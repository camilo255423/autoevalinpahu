<?php
/* @var $this FactorProcesoController */
/* @var $model FactorProceso */

$this->breadcrumbs=array(
	'Factor Procesos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List FactorProceso', 'url'=>array('index')),
	array('label'=>'Manage FactorProceso', 'url'=>array('admin')),
);
?>

<h1>Create FactorProceso</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>