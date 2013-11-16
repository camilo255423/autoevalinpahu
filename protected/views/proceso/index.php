<?php
/* @var $this ProcesoController */
/* @var $dataProvider CActiveDataProvider */
/*
$this->breadcrumbs=array(
	'Procesos',
);*/

$this->menu=array(
	array('label'=>'Crear Nuevo Proceso', 'url'=>array('create')),
	array('label'=>'Administrar Procesos', 'url'=>array('admin')),
);
?>

<h1>Procesos</h1>
<div>Seleccione un proceso de autoevaluación:</div>
<?php
        foreach ($models as $model)
        {
 ?>
        <?php  if( $model->tipoProceso!=null) echo $model->tipoProceso->nombre; ?>
        <?php if( $model->tipoProceso!=null) $s=$model->descripcion."-".$model->tipoProceso->nombre.": de ".$model->fecha_inicio." al ".$model->fecha_fin; else $s="null".$model->id_proceso; ?>
        <?php echo CHtml::link($s,array('factorProceso/index&idProceso='.$model->id_proceso)); ?>
<?php            
        }

?>
