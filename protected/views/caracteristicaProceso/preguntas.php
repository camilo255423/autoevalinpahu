<?php
/* @var $this FactorProcesoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Factor Procesos',
);

$this->menu=array(
	array('label'=>'Create FactorProceso', 'url'=>array('create')),
	array('label'=>'Manage FactorProceso', 'url'=>array('admin')),
    array('label'=>'Editar Preguntas', 'url'=>array('EditarPreguntas&idCaracteristica='.$caracteristica->id_caracteristica_proceso)),
);
?>

<h2>Característica  <?php echo $caracteristica->numero_caracteristica.". ".$caracteristica->titulo ?></h2>
<table>
<tr class="row">    
<th>Pregunta</th>

    <?php foreach ($fuentes as $fuente) { ?>
    <th><?php echo $fuente->nombre; ?></th>
    <?php } ?>
</tr>
<?php foreach ($caracteristica->preguntas as $i=>$pregunta) {?>

<tr>    

<td>
    <?php echo ($i+1); ?> .
    <?php echo $pregunta->enunciado; ?>
</td>
<?php $j=0; ?>
<?php $nfuentes=count($pregunta->fuentes); ?>
<?php foreach ($fuentes as $fuente) { ?>
<?php $texto=""; ?>
    <?php if($j<$nfuentes) {?>
    <?php if($fuente->id_fuente_proceso==$pregunta->fuentes[$j]->id_fuente_proceso ){ ?>
    
    <?php $texto="X"; ?>
    <?php $j++; ?>
    <?php } ?>
    <?php } ?>
    <td style="text-align: center"><?php echo $texto; ?></td>
<?php } ?>
</tr>
<?php } ?>
</table>
