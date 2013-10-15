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

<h1>Factores</h1>

<?php foreach ($model as $fuente) {?>
    <?php $s=$fuente->nombre; ?>

<div>
    <?php echo CHtml::link($s, array('fuenteProceso/view', 'idFuente'=>$fuente->id_fuente_proceso)); ?>
</div>
<?php } ?>