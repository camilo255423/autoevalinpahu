<?php
/* @var $this CaracteristicaProcesoController */
/* @var $model CaracteristicaProceso */

$this->breadcrumbs=array(
	'Caracteristica Procesos'=>array('index'),
	'Create',
);

$this->menu=array(
array('label'=>'Guardar', 'url'=>'#','linkOptions'=>array('onClick'=>"$('#caracteristica-nueva-pregunta').submit()")),
    array('label'=>'Cancelar', 'url'=>array('index'))
);
?>

<h1>Crear Característica</h1>

<?php $this->renderPartial('_form', array('model'=>$model,'idProceso'=>$idProceso)); ?>