<?php
/* @var $this PreguntaProcesoController */
/* @var $model PreguntaProceso */

$this->breadcrumbs=array(
	'Pregunta Procesos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List PreguntaProceso', 'url'=>array('index')),
	array('label'=>'Manage PreguntaProceso', 'url'=>array('admin')),
);
?>

<h1>Create PreguntaProceso</h1>

<?php $this->renderPartial('_form', array('model'=>$model,'idCaracteristica'=>$idCaracteristica)); ?>