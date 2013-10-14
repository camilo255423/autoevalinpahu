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

<h2>Factor  <?php echo $factor->numero_factor.". ".$factor->titulo ?></h2>

<?php foreach ($model as $caracteristica) {?>
    <?php $s=$caracteristica->numero_caracteristica.". ".$caracteristica->titulo; ?>

<div>
    <?php echo CHtml::link($s, array('CaracteristicaProceso/preguntas', 'idCaracteristica'=>$caracteristica->id_caracteristica_proceso)); ?>
</div>
<?php } ?>