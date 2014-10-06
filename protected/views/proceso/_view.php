<?php
/* @var $this ProcesoController */
/* @var $data Proceso */
?>

<div class="view">

	
        <?php $s=$data->descripcion."-".$data->idProceso->nombre.": de ".$data->fecha_inicio." al ".$data->fecha_fin; ?>
	<?php echo CHtml::link($s, array('FactorProceso/index', 'idProceso'=>$data->id_proceso)); ?>

</div>