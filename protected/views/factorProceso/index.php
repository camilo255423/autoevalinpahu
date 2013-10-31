<?php
/* @var $this FactorProcesoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Factor Procesos',
);

$this->menu=array(
	array('label'=>'Crear Factor', 'url'=>array('create')),
	array('label'=>'Modificar Factores', 'url'=>array('admin')),
);
?>

<h1>Factores</h1>

<?php foreach ($model as $factor) {?>
    <?php $s=$factor->numero_factor.". ".$factor->titulo; ?>

<div>
    <?php echo CHtml::link($s, array('CaracteristicaProceso/index', 'idFactor'=>$factor->id_factor_proceso)); ?>
</div>
<?php } ?>