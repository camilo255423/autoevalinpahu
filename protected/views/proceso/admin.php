<?php
/* @var $this ProcesoController */
/* @var $model Proceso */

$this->breadcrumbs=array(
	'Procesos'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Crear Proceso', 'url'=>array('create')),
);

?>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'proceso-grid',
	'dataProvider'=>$model->search(),
  //  'cssFile' => Yii::app()->request->baseUrl.'/css/grid.css',
	
        'template' => '{items}',
	'filter'=>$model,
	'columns'=>array(
		array(
                'name'  => 'descripcion',
                'value' => 'CHtml::link($data->descripcion, Yii::app()
         ->createUrl("factorProceso/index",array("idProceso"=>$data->id_proceso)))',
                'type'  => 'raw',
            ),
		'fecha_inicio',
		'fecha_fin',
		'tipoProceso.nombre',
		
		array(
			'class'=>'CButtonColumn',
                      'template'=>'{update}',
		),
	),
    'pager' => array('cssFile' => Yii::app()->baseUrl . '/css/gridViewStyle/gridView.css'),
        'cssFile' => Yii::app()->baseUrl . '/css/gridViewStyle/gridView.css',
        //changing the text above the grid can be fun
        'summaryText' => 'Mostrando {start} - {end} de {count} resultados',
        'htmlOptions' => array('class' => 'grid-view rounded'),
 
)); ?>
