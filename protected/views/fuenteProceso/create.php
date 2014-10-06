<?php
/* @var $this FuenteProcesoController */
/* @var $model FuenteProceso */

$this->breadcrumbs=array(
	'Fuente Procesos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List FuenteProceso', 'url'=>array('index')),
	array('label'=>'Manage FuenteProceso', 'url'=>array('admin')),
);
?>

<h1>Create FuenteProceso</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>