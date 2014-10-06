
<?php

$baseUrl = Yii::app()->baseUrl; 
$cs = Yii::app()->getClientScript();
$cs->registerCssFile($baseUrl.'/css/custom.css');
$cs->registerCssFile($baseUrl.'/css/gridViewStyle/gridView.css');
$this->breadcrumbs=array(
	'Factor Procesos',
);



$this->menu=array(
	array('label'=>'Crear Pregunta', 'url'=>array('preguntaProceso/create&idCaracteristica='.$caracteristica->id_caracteristica_proceso)),
        array('label'=>'Guardar', 'url'=>'#','linkOptions'=>array('onClick'=>"$('#caracteristica-agregar-preguntas').submit()")),
);
?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'caracteristica-agregar-preguntas',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>
<?php echo CHtml::hiddenField("idCaracteristica",$caracteristica->id_caracteristica_proceso); ?>    
<h2><?php echo $caracteristica->titulo ?></h2>
<h3>Seleccione o deseleccione las preguntas asociadas a esta categoría.</h3>
<div class="grid-view rounded">
<table class="items">
<tr class="odd">    
    <th colspan="2">Pregunta</th>

    </tr>
<?php foreach ($preguntas as $i=>$pregunta) {?>
<tr class="<?php if($i%2==0) echo 'odd'; else echo 'even'; ?>">    
<td>
                <?php echo CHtml::hiddenField("pregunta[$pregunta->id_pregunta_proceso]",0); ?>
                <?php echo CHtml::checkBox("pregunta[$pregunta->id_pregunta_proceso]",null!=CaracteristicaPreguntaProceso::model()->findByAttributes(array('id_caracteristica_proceso'=>$caracteristica->id_caracteristica_proceso, 'id_pregunta_proceso'=>$pregunta->id_pregunta_proceso))) ?>
		<?php echo $pregunta->enunciado; ?>		
</td>
<td>
   <?php echo CHtml::link('Borrar',"#", array("submit"=>array('borrarPregunta', 'idPregunta'=>$pregunta->id_pregunta_proceso,"idCaracteristica"=>$caracteristica->id_caracteristica_proceso), 'confirm' => 'Está seguro que desea borrar esta pregunta? (se borrará de todas las características asociadas también)')); ?> 
</td>
</tr>
<?php } ?>
</table>
</div>
<?php echo CHtml::submitButton("aceptar"); ?>
</div>

<?php $this->endWidget(); ?>