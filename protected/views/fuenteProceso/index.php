<?php
/* @var $this FuenteProcesoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Fuente Procesos',
);

$this->menu=array(
	array('label'=>'Create FuenteProceso', 'url'=>array('create')),
	array('label'=>'Manage FuenteProceso', 'url'=>array('admin')),
);
?>

<h1>Fuente Procesos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
