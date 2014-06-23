<?php
/* @var $this PreguntaProcesoController */
/* @var $model PreguntaProceso */

$this->breadcrumbs=array(
	'Pregunta Procesos'=>array('index'),
	'Crear',
);

$this->menu=array(
array('label'=>'Guardar', 'url'=>'#','linkOptions'=>array('onClick'=>"$('#pregunta-proceso-form').submit()")),
array('label'=>'Cancelar', 'url'=>'index.php?r=caracteristicaProceso/agregarPreguntasTodas')
        );
?>

<h1>Nueva pregunta</h1>

<?php $this->renderPartial('_form', array('model'=>$model,'idCaracteristica'=>$idCaracteristica)); ?>