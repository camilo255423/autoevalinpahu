<?php
/* @var $this PreguntaProcesoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Pregunta Procesos',
);

$this->menu=array(
	array('label'=>'Create PreguntaProceso', 'url'=>array('create')),
	array('label'=>'Manage PreguntaProceso', 'url'=>array('admin')),
);
?>

<h1>Pregunta Procesos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
