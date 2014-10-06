<?php
/* @var $this CaracteristicaProcesoController */
/* @var $model CaracteristicaProceso */

$this->breadcrumbs=array(
	'Caracteristica Procesos'=>array('index'),
	'Manage',
);

$this->menu=array(
	//array('label'=>'Listar todas las características', 'url'=>array('index&idFactor='.$idFactor)),
	array('label'=>'Crear Característica', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#caracteristica-proceso-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Características</h1>


<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'caracteristica-proceso-grid',
	'dataProvider'=>$model->search($idFactor),
	'filter'=>$model,
	'columns'=>array(
		array(
                'name'  => 'titulo',
                'value' => 'CHtml::link($data->titulo, Yii::app()
         ->createUrl("caracteristicaProceso/preguntas",array("idCaracteristica"=>$data->id_caracteristica_proceso)))',
                'type'  => 'raw',
            ),
            'factor.titulo',
		array(
			'class'=>'CButtonColumn',
		
             'template'=>'{update},{delete}',
              'buttons'=>array
                    (
                        'update' => array
                        (
                            'label'=>'Actualizar Característica',
                            
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
