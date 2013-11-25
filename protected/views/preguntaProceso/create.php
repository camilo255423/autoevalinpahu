<?php
/* @var $this PreguntaProcesoController */
/* @var $model PreguntaProceso */

$this->breadcrumbs=array(
	'Pregunta Procesos'=>array('index'),
	'Crear',
);

$this->menu=array(
array('label'=>'Guardar', 'url'=>'#','linkOptions'=>array('onClick'=>"$('#pregunta-proceso-form').submit()")),
);
?>

<h1>Create PreguntaProceso</h1>

<?php $this->renderPartial('_form', array('model'=>$model,'idCaracteristica'=>$idCaracteristica)); ?>