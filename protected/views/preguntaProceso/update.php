<?php
/* @var $this PreguntaProcesoController */
/* @var $model PreguntaProceso */

$this->breadcrumbs=array(
	'Pregunta Procesos'=>array('index'),
	$model->id_pregunta_proceso=>array('view','id'=>$model->id_pregunta_proceso),
	'Update',
);

$this->menu=array(
	array('label'=>'List PreguntaProceso', 'url'=>array('index')),
	array('label'=>'Create PreguntaProceso', 'url'=>array('create')),
	array('label'=>'View PreguntaProceso', 'url'=>array('view', 'id'=>$model->id_pregunta_proceso)),
	array('label'=>'Manage PreguntaProceso', 'url'=>array('admin')),
);
?>

<h1>Update PreguntaProceso <?php echo $model->id_pregunta_proceso; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>