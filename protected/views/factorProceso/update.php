<?php
/* @var $this FactorProcesoController */
/* @var $model FactorProceso */

$this->breadcrumbs=array(
	'Factor Procesos'=>array('index'),
	$model->id_factor_proceso=>array('view','id'=>$model->id_factor_proceso),
	'Update',
);

$this->menu=array(
	  array('label'=>'Guardar', 'url'=>'#','linkOptions'=>array('onClick'=>"$('#factor-proceso-form').submit()")),
          array('label'=>'Cancelar', 'url'=>array('index'))
    
);
?>

<h1>Actualizar Factor</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>