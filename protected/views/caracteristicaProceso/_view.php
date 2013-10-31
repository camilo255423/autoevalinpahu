<?php
/* @var $this CaracteristicaProcesoController */
/* @var $data CaracteristicaProceso */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_caracteristica_proceso')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_caracteristica_proceso), array('view', 'id'=>$data->id_caracteristica_proceso)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('titulo')); ?>:</b>
	<?php echo CHtml::encode($data->titulo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('numero_caracteristica')); ?>:</b>
	<?php echo CHtml::encode($data->numero_caracteristica); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_factor_proceso')); ?>:</b>
	<?php echo CHtml::encode($data->id_factor_proceso); ?>
	<br />


</div>