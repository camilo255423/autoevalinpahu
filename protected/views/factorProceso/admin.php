<?php
/* @var $this FactorProcesoController */
/* @var $model FactorProceso */

$this->breadcrumbs=array(
	'Factor Procesos'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Crear Factor', 'url'=>array('create')),
);

?>


<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'factor-proceso-grid',
	'dataProvider'=>$model->search(),
      //  'template' => '{items}',
     //   'cssFile' => Yii::app()->request->baseUrl.'/css/grid.css',
	'columns'=>array(
		array(
                'name'  => 'Factores',
                'value' => 'CHtml::link($data->titulo, Yii::app()
         ->createUrl("caracteristicaProceso/index",array("idFactor"=>$data->id_factor_proceso)))',
                'type'  => 'raw',
            ),
		array(
			'class'=>'CButtonColumn',
		
             'template'=>'{update},{delete}',
              'buttons'=>array
                    (
                        'update' => array
                        (
                            'label'=>'Actualizar factor',
                            
                        ),
                  
                    ),
                ),    
                   
	),
      'pager' => array('cssFile' => Yii::app()->baseUrl . '/css/gridViewStyle/gridView.css'),
        'cssFile' => Yii::app()->baseUrl . '/css/gridViewStyle/gridView.css',
        //changing the text above the grid can be fun
        'summaryText' => 'Mostrando {start} - {end} de {count} resultados',
        'htmlOptions' => array('class' => 'grid-view rounded'),
)); ?>
