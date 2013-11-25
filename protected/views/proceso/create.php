<?php
/* @var $this ProcesoController */
/* @var $model Proceso */

$this->breadcrumbs=array(
	'Procesos'=>array('index'),
	'Create',
);

$this->menu=array(
array('label'=>'Guardar', 'url'=>'#','linkOptions'=>array('onClick'=>"$('#proceso-form').submit()")),
    array('label'=>'Cancelar', 'url'=>array('index'))
);
?>

<h1>Create Proceso</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>