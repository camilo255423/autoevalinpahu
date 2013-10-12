<?php
/* @var $this ProcesoController */
/* @var $data Proceso */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_proceso')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->descripcion), array('view', 'idProceso'=>$data->id_proceso)); ?>
	

	<b><?php echo CHtml::encode($data->getAttributeLabel('fecha_inicio')); ?>:</b>
	<?php echo CHtml::encode($data->fecha_inicio); ?>
	

	<b><?php echo CHtml::encode($data->getAttributeLabel('fecha_fin')); ?>:</b>
	<?php echo CHtml::encode($data->fecha_fin); ?>


	<b><?php echo CHtml::encode($data->getAttributeLabel('id_tipo_proceso')); ?>:</b>
	<?php echo CHtml::encode($data->id_tipo_proceso); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />


</div>