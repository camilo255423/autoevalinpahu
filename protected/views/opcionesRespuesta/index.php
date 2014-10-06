<?php
/* @var $this OpcionesRespuestaController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Opciones Respuestas',
);

$this->menu=array(
	array('label'=>'Crear Opción', 'url'=>array('create')),
);
?>

<h1>Opciones Respuestas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
