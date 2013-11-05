<?php 

$baseUrl = Yii::app()->baseUrl; 
$cs = Yii::app()->getClientScript();
$cs->registerScriptFile($baseUrl.'/js/plot/jquery.jqplot.min.js');
$cs->registerScriptFile($baseUrl.'/js/plot/plugins/jqplot.pieRenderer.min.js');
$cs->registerCssFile($baseUrl.'/js/plot/jquery.jqplot.css');
$cs->registerCssFile($baseUrl.'/css/custom.css');
  
 
?>

<?php
/* @var $this ReportesController */

$this->breadcrumbs=array(
	'Reportes',
);
?>
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'fuente-proceso-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

<?php
$factores = FactorProceso::model()->findAllByAttributes(array('id_proceso'=>$idProceso));
echo CHtml::dropDownList('id_factor_proceso','', CHtml::listData($factores, 'id_factor_proceso','titulo') ,
array(
'ajax' => array(
'type'=>'POST', //request type
'url'=>CController::createUrl('reportes/actualizarLista'), //url to call.
'update'=>'#id_caracteristica', //selector to update

)));

 ?>
<?php $caracteristicas=  CaracteristicaProceso::model()->findAll('id_factor_proceso=:id_factor_proceso', 
             array(':id_factor_proceso'=>$factores[0]->id_factor_proceso));?>
<?php echo CHtml::dropDownList('id_caracteristica','', CHtml::listData($caracteristicas,'id_caracteristica_proceso','titulo'),
array(        
'ajax' => array(
'type'=>'POST', //request type
'url'=>CController::createUrl('reportes/actualizar'), //url to call.
'update'=>'#contenido', //selector to update

)));?>

<div id="contenido"></div>



   
    

<script>
  $(function()
  {
      
$.ajax({
      type: "POST",
      url:    "<? echo Yii::app()->createUrl('reportes/actualizar'); ?>",
      data:  {id_caracteristica:1},
      success: function(html){jQuery("#contenido").html(html)}
     
    });
  }  
  );
  function graficar(chart,datos){
    console.log(datos);
  plot2 = jQuery.jqplot(chart, 
    [datos], 
    {
      title: ' ', 
      seriesDefaults: {
        shadow: false, 
        renderer: jQuery.jqplot.PieRenderer, 
        rendererOptions: { 
          startAngle: 180, 
          sliceMargin: 4, 
          showDataLabels: true } 
      }, 
      legend: { show:true, location: 'w'}
    }
  );
}

 </script>

<?php $this->endWidget(); ?>