<?php
/* @var $this PreguntaProcesoController */
/* @var $model PreguntaProceso */

$this->breadcrumbs=array(
	'Pregunta Procesos'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List PreguntaProceso', 'url'=>array('index')),
	array('label'=>'Create PreguntaProceso', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#pregunta-proceso-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Pregunta Procesos</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'pregunta-proceso-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id_pregunta_proceso',
		'enunciado',
		'id_tipo_respuesta',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
