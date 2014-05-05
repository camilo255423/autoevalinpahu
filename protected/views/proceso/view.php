<?php
/* @var $this ProcesoController */
/* @var $model Proceso */

$this->breadcrumbs=array(
	'Procesos'=>array('index'),
	$model->id_proceso,
);

$this->menu=array(
	array('label'=>'List Proceso', 'url'=>array('index')),
	array('label'=>'Create Proceso', 'url'=>array('create')),
	array('label'=>'Update Proceso', 'url'=>array('update', 'id'=>$model->id_proceso)),
	array('label'=>'Delete Proceso', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_proceso),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Proceso', 'url'=>array('admin')),
);
?>

<h1>View Proceso #<?php echo $model->id_proceso; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_proceso',
		'fecha_inicio',
		'fecha_fin',
		'id_tipo_proceso',
		'descripcion',
	),
    'pager' => array('cssFile' => Yii::app()->baseUrl . '/css/gridViewStyle/gridView.css'),
        'cssFile' => Yii::app()->baseUrl . '/css/gridViewStyle/gridView.css',
        //changing the text above the grid can be fun
        'summaryText' => 'Yiiplayground is showing you {start} - {end} of {count} cool records',
        'htmlOptions' => array('class' => 'grid-view rounded'),
        'columns' => array(
                array(
                        'name' => 'username',
                        'type' => 'raw',
                        'value' => 'CHtml::encode($data->username)'
                ),
                array(
                        'name' => 'email',
                        'type' => 'raw',
                        'value' => 'CHtml::link(CHtml::encode($data->email), "mailto:".CHtml::encode($data->email))',
                ),
                array(
                        'header' => '(fake) Actions',
                        'class' => 'CButtonColumn',
                        'viewButtonImageUrl' => Yii::app()->baseUrl . '/css/gridViewStyle/images/' . 'gr-view.png',
                        'updateButtonImageUrl' => Yii::app()->baseUrl . '/css/gridViewStyle/images/' . 'gr-update.png',
                        'deleteButtonImageUrl' => Yii::app()->baseUrl . '/css/gridViewStyle/images/' . 'gr-delete.png',
                ),
        ),

)); ?>
