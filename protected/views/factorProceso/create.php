<?php
/* @var $this FactorProcesoController */
/* @var $model FactorProceso */

$this->breadcrumbs=array(
	'Factor Procesos'=>array('index'),
	'Create',
);

$this->menu=array(
	  array('label'=>'Guardar', 'url'=>'#','linkOptions'=>array('onClick'=>"$('#factor-proceso-form').submit()")),
          array('label'=>'Cancelar', 'url'=>array('index'))
    
);
?>

<h1>Crear Factor</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>