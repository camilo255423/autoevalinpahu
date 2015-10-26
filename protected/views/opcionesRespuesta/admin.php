<?php
/* @var $this OpcionesRespuestaController */
/* @var $model OpcionesRespuesta */


$this->menu=array(


    array('label' => 'Crear Nueva Opción', 
        'url'=>array('create', 'idTipoRespuesta'=>$tipoRespuesta->id_tipo_respuesta)
        ),
    array('label'=>'Volver a Tipos de Respuesta', 'url'=>array('tipoRespuesta/admin')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#opciones-respuesta-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1><?php echo $tipoRespuesta->titulo; ?></h1>


<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'opciones-respuesta-grid',
	'dataProvider'=>$model->search($idTipoRespuesta),
  //  'cssFile' => Yii::app()->request->baseUrl.'/css/grid.css',
	
        'template' => '{items}',
	'columns'=>array(
		array(
                'name'  => 'Respuesta',
                'value' => '$data->respuesta',
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
	jQuery('#opciones-respuesta-grid').yiiGridView('update', {
		type: 'POST',
		url: jQuery(this).attr('href'),
		success: function(data) {
    
                if(data.status=='succesful')
                {
   
			jQuery('#opciones-respuesta-grid').yiiGridView('update');
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
