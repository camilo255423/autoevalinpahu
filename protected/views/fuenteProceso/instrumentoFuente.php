<?php $baseUrl = Yii::app()->baseUrl; 
$cs = Yii::app()->getClientScript();
$cs->registerScriptFile($baseUrl.'/js/header.js');
$cs->registerScriptFile($baseUrl.'/js/redips-drag-min.js');
$cs->registerScriptFile($baseUrl.'/js/arrastrar.js');
?>
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
<div id="drag">
<table class="ww" border="1" id="table1">
<colgroup>
    <col width="250"/>
</colgroup>
    
<tbody>
        
<?php foreach ($fuente->preguntas as $i=>$pregunta) {?>
    

<tr class="zzz">
    <td class="xx"><?php echo ($i+1);?>. <div id="c" class="drag green" style="display: inline"><?php echo $pregunta->enunciado; ?></div></td>
</tr>

<?php } ?>
</tbody>
</table>
</drag>
    
