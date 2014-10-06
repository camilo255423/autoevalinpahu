<?php
/* @var $this OpcionesRespuestaController */
/* @var $data OpcionesRespuesta */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_opcion')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_opcion), array('view', 'id'=>$data->id_opcion)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('respuesta')); ?>:</b>
	<?php echo CHtml::encode($data->respuesta); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('valor')); ?>:</b>
	<?php echo CHtml::encode($data->valor); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_tipo_respuesta')); ?>:</b>
	<?php echo CHtml::encode($data->id_tipo_respuesta); ?>
	<br />


</div>