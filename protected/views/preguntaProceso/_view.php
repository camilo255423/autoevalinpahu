<?php
/* @var $this PreguntaProcesoController */
/* @var $data PreguntaProceso */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_pregunta_proceso')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_pregunta_proceso), array('view', 'id'=>$data->id_pregunta_proceso)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('enunciado')); ?>:</b>
	<?php echo CHtml::encode($data->enunciado); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_tipo_respuesta')); ?>:</b>
	<?php echo CHtml::encode($data->id_tipo_respuesta); ?>
	<br />


</div>