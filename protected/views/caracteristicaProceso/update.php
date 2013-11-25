<?php
/* @var $this CaracteristicaProcesoController */
/* @var $model CaracteristicaProceso */

$this->breadcrumbs=array(
	'Caracteristica Procesos'=>array('index'),
	$model->id_caracteristica_proceso=>array('view','id'=>$model->id_caracteristica_proceso),
	'Update',
);

$this->menu=array(
array('label'=>'Guardar', 'url'=>'#','linkOptions'=>array('onClick'=>"$('#caracteristica-nueva-pregunta').submit()")),
    array('label'=>'Cancelar', 'url'=>array('index'))
);
?>

<h1>Actualizar Característica</h1>

<?php $this->renderPartial('_form', array('model'=>$model,'idProceso'=>$idProceso)); ?>