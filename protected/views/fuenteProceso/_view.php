<?php
/* @var $this FuenteProcesoController */
/* @var $data FuenteProceso */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_fuente_proceso')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_fuente_proceso), array('view', 'id'=>$data->id_fuente_proceso)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	<?php echo CHtml::encode($data->nombre); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('enunciado')); ?>:</b>
	<?php echo CHtml::encode($data->enunciado); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_proceso')); ?>:</b>
	<?php echo CHtml::encode($data->id_proceso); ?>
	<br />


</div>