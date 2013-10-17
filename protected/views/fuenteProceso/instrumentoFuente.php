<?php $baseUrl = Yii::app()->baseUrl; 
$cs = Yii::app()->getClientScript();
$cs->registerScriptFile($baseUrl.'/js/header.js');
$cs->registerScriptFile($baseUrl.'/js/redips-drag-min.js');
$cs->registerScriptFile($baseUrl.'/js/arrastrar.js');
?>
<?php
/* @var $this FactorProcesoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Factor Procesos',
);

$this->menu=array(
	array('label'=>'Guardar', 'url'=>'#','linkOptions'=>array('onClick'=>"$('#instrumento-fuente').submit()")),
);
?>


<?php  $form=$this->beginWidget('CActiveForm', array(
	'id'=>'instrumento-fuente',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

<?php echo CHtml::hiddenField("idFuente",$fuente->id_fuente_proceso); ?>  
<h1><?php echo $fuente->nombre; ?></h1>
<div id="drag">
<table class="ww" border="1" id="table1">
<colgroup>
    <col width="250"/>
</colgroup>
    
<tbody>
<?php echo $form->textArea($fuente, 'enunciado',array('placeholder'=>'digite el enunciado del instrumento...','rows'=>'5','cols'=>'90')); ?>        
<?php foreach ($fuente->preguntas as $i=>$pregunta) {?>
    

<tr class="zzz">
    <td class="xx"><?php echo ($i+1);?>. 
    <div id="c" class="drag green" style="display: inline">
        <?php echo CHtml::ActiveHiddenField($pregunta,"[$i]id_pregunta_proceso",array('value'=>$pregunta->id_pregunta_proceso)); ?>
        <?php echo $pregunta->enunciado; ?>
    </div>
    </td>
</tr>

<?php } ?>
</tbody>
</table>
</div>
<?php  $this->endWidget(); ?>
