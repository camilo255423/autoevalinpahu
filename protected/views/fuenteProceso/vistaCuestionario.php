<div class="form">
<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'instrumento-fuente',
	'enableClientValidation'=>false,
	'clientOptions'=>array(
		'validateOnSubmit'=>false,
	),
)); ?>

<h1><?php echo $fuente->nombre; ?></h1>

<table id="table1">

<tbody>
<h2><?php echo $fuente->enunciado; ?></h2>  
<?php $i=0; ?>
<?php foreach ($respuestas as $respuesta) {?>
    

<tr>
    <td <?php echo ($i+1);?>.
    <div>
        <?php echo $fuente->preguntas[$i]->enunciado; ?>
        <?php echo CHtml::activeHiddenField($respuesta,"[$i]id_fuente_proceso"); ?>
        <?php echo CHtml::activeHiddenField($respuesta,"[$i]id_pregunta_proceso"); ?>
        <?php echo CHtml::activeHiddenField($respuesta,"[$i]id_usuario_proceso"); ?>
        
    </div>
    </td>
    <td>
         <?php echo $form->dropDownList($respuesta, "[$i]id_opcion", CHtml::listData(OpcionesRespuesta::model()->findAllByAttributes(array('id_tipo_respuesta'=>$fuente->preguntas[$i]->id_tipo_respuesta)), 'id_opcion','respuesta'),array('empty'=>'Seleccionar...')); ?>
         <?php echo $form->error($respuesta, "[$i]id_opcion"); ?>
    </td>
</tr>
<?php $i++; ?>
<?php } ?>

</tbody>
</table>
<?php echo CHtml::hiddenField("previsualizando","1"); ?>
<div class="row buttons" style="text-align: center">
		<?php echo CHtml::submitButton('Volver a la edición del cuestionario', array('submit' => array('fuenteProceso/instrumentoFuente&idFuente='.$fuente->id_fuente_proceso))); ?>

</div>    

<?php  $this->endWidget(); ?>
</div>