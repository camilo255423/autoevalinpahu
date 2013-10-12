<?php
/* @var $this ProcesoController */
/* @var $data Proceso */
?>

<div class="view">

	<b>Proceso: </b>
	<?php echo CHtml::link(CHtml::encode($data->descripcion), array('FactorProceso/index', 'idProceso'=>$data->id_proceso)); ?>
	<b>Tipo de Proceso:</b>
	<?php echo CHtml::encode($data->idProceso->nombre); ?>
        <br />
	<b><?php echo CHtml::encode($data->getAttributeLabel('fecha_inicio')); ?>:</b>
	<?php echo CHtml::encode($data->fecha_inicio); ?>
	

	<b><?php echo CHtml::encode($data->getAttributeLabel('fecha_fin')); ?>:</b>
	<?php echo CHtml::encode($data->fecha_fin); ?>


	
	

	


</div>