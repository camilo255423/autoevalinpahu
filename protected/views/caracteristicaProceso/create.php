<?php
/* @var $this CaracteristicaProcesoController */
/* @var $model CaracteristicaProceso */

$this->breadcrumbs=array(
	'Caracteristica Procesos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Listar Características', 'url'=>array('index')),
	array('label'=>'Manage CaracteristicaProceso', 'url'=>array('admin')),
);
?>

<h1>Create CaracteristicaProceso</h1>

<?php $this->renderPartial('_form', array('model'=>$model,'idProceso'=>$idProceso)); ?>