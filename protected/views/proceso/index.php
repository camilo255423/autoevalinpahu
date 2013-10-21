<?php
/* @var $this ProcesoController */
/* @var $dataProvider CActiveDataProvider */
/*
$this->breadcrumbs=array(
	'Procesos',
);*/

$this->menu=array(
	array('label'=>'Crear Nuevo Proceso', 'url'=>array('create')),
	array('label'=>'Administrar Procesos', 'url'=>array('admin')),
);
?>

<h1>Procesos</h1>
<div>Seleccione un proceso de autoevaluación:</div>
<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
