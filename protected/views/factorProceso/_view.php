<?php
/* @var $this FactorProcesoController */
/* @var $data FactorProceso */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_factor_proceso')); ?>:</b>
	<?php echo CHtml::link($data->numero_factor." ".$data->titulo, array('view', 'idFactor'=>$data->id_factor_proceso)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_proceso')); ?>:</b>
	<?php echo CHtml::encode($data->id_proceso); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('titulo')); ?>:</b>
	<?php echo CHtml::encode($data->titulo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('numero_factor')); ?>:</b>

	<br />


</div>