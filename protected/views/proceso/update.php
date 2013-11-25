<?php
/* @var $this ProcesoController */
/* @var $model Proceso */

$this->breadcrumbs=array(
	'Procesos'=>array('index'),
	$model->id_proceso=>array('view','id'=>$model->id_proceso),
	'Update',
);


$this->menu=array(
array('label'=>'Guardar', 'url'=>'#','linkOptions'=>array('onClick'=>"$('#proceso-form').submit()")),
    array('label'=>'Cancelar', 'url'=>array('index'))
);
?>

<h1>Actualizar Proceso</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>