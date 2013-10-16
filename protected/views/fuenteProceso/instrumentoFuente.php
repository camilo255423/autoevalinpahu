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

<h1><?php echo $fuente->nombre; ?></h1>

<?php foreach ($fuente->preguntas as $pregunta) {?>
    

<div>
    <?php echo $pregunta->enunciado; ?>
</div>
<?php } ?>