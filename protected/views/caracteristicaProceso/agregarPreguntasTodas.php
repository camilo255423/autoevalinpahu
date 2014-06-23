
<?php

$baseUrl = Yii::app()->baseUrl; 
$cs = Yii::app()->getClientScript();
$cs->registerCssFile($baseUrl.'/css/custom.css');
$cs->registerCssFile($baseUrl.'/css/gridViewStyle/gridView.css');
$this->breadcrumbs=array(
	'Factor Procesos',
);



$this->menu=array(
	array('label'=>'Crear Pregunta', 'url'=>array('preguntaProceso/create&idCaracteristica=0')),
     
    array('label'=>'Asignar Fuentes', 'url'=>array('asignarPreguntas'))
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
             
		<?php echo $pregunta->enunciado; ?>		
</td>
<td>
   <?php echo CHtml::link('Borrar',"#", array("submit"=>array('borrarPregunta', 'idPregunta'=>$pregunta->id_pregunta_proceso,"idCaracteristica"=>0), 'confirm' => 'Está seguro que desea borrar esta pregunta? (se borrará de todas las características asociadas también)')); ?>  
</td>
<td>
   <?php echo CHtml::link('Editar',array('preguntaProceso/update&id='.$pregunta->id_pregunta_proceso)); ?> 
</td>
</tr>
<?php } ?>
</table>
</div>
<?php echo CHtml::submitButton("aceptar"); ?>
</div>

<?php $this->endWidget(); ?>