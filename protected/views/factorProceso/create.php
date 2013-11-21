<?php
/* @var $this FactorProcesoController */
/* @var $model FactorProceso */

$this->breadcrumbs=array(
	'Factor Procesos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Factores', 'url'=>array('admin')),
);
?>

<h1>Crear Factor</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>