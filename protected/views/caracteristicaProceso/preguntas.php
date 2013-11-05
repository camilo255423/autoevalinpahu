
<?php
/* @var $this FactorProcesoController */
/* @var $dataProvider CActiveDataProvider */
$baseUrl = Yii::app()->baseUrl; 
$cs = Yii::app()->getClientScript();
$cs->registerCssFile($baseUrl.'/css/custom.css');
$this->breadcrumbs=array(
	'Factor Procesos',
);

$this->menu=array(

        array('label'=>'Editar Preguntas', 'url'=>array('EditarPreguntas&idCaracteristica='.$caracteristica->id_caracteristica_proceso)),
        array('label'=>'Agregar/Quitar Preguntas', 'url'=>array('AgregarPreguntas&idCaracteristica='.$caracteristica->id_caracteristica_proceso)),
);
?>

<h2> <?php echo $caracteristica->titulo ?>.</h2>
<table class="clase2">
<th class="clase2">Pregunta</th>

    <?php foreach ($fuentes as $fuente) { ?>
    <th class="clase1"><?php echo $fuente->nombre; ?></th>
    <?php } ?>
</tr>
<?php foreach ($caracteristica->preguntas as $i=>$pregunta) {?>

<tr class="clase2">    

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
    
    <?php $texto="x"; ?>
    <?php $j++; ?>
    <?php } ?>
    <?php } ?>
    <td style="text-align: center"><?php echo $texto; ?></td>
<?php } ?>
</tr>
<?php } ?>
</table>
