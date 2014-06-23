<?php
/* @var $this ProcesoController */
/* @var $model Proceso */

$this->breadcrumbs=array(
	'Procesos'=>array('index'),
	'Crear',
);

$this->menu=array(
array('label'=>'Crear', 'url'=>'#','linkOptions'=>array('onClick'=>"$('#proceso-form').submit()")),
    array('label'=>'Cancelar', 'url'=>array('index'))
);
?>

<h1>Crear Proceso</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>