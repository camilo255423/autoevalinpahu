<?php
/* @var $this FactorProcesoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Factor Procesos',
);

$this->menu=array(
	array('label'=>'Create FactorProceso', 'url'=>array('create')),
	array('label'=>'Manage FactorProceso', 'url'=>array('admin')),
);
?>

<h1>Fuentes</h1>

<?php foreach ($model as $fuente) {?>
    <?php $s=$fuente->nombre; ?>

<div>
    <?php echo CHtml::link($s, array('fuenteProceso/instrumentoFuente', 'idFuente'=>$fuente->id_fuente_proceso)); ?>
</div>
<?php } ?>