<?php
/* @var $this TipoRespuestaController */
/* @var $model TipoRespuesta */

$this->breadcrumbs=array(
	'Tipo Respuestas'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'Crear Nuevo Tipo de Respuesta', 'url'=>array('create')),
        
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#tipo-respuesta-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Tipos de Respuestas</h1>


<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php
/*
$this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'tipo-respuesta-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id_tipo_respuesta',
		'titulo',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); 
 */ 
 ?>
 
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'tipo-respuesta-grid',
	'dataProvider'=>$model->search(),
  //  'cssFile' => Yii::app()->request->baseUrl.'/css/grid.css',
	
        'template' => '{items}',
	'columns'=>array(
		array(
                'name'  => 'titulo',
                'value' => 'CHtml::link($data->titulo, Yii::app()
         ->createUrl("opcionesRespuesta/index",array("idTipoRespuesta"=>$data->id_tipo_respuesta)))',
                'type'  => 'raw',
            ),
            	array(
			'class'=>'CButtonColumn',
                      'template'=>'{update},{delete}',
                    'buttons'=>array(
                    'delete'=>array(
                    
                    'click'=>"js:function(){
                       if(!confirm('¿Está seguro que desea borrar este elemento?')) return false;
                    
	var th = this,
		afterDelete = function(){};
	jQuery('#tipo-respuesta-grid').yiiGridView('update', {
		type: 'POST',
		url: jQuery(this).attr('href'),
		success: function(data) {
    
                if(data.status=='succesful')
                {
   
			jQuery('#tipo-respuesta-grid').yiiGridView('update');
			afterDelete(th, true, data);
                 }
                 else
                 {
            
                             alert(data.message );
                 }
                
		},
		error: function(XHR) {
                alert(XHR);
			return afterDelete(th, false, XHR);
		}
	});
	return false;
                        }",                        
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

