<?php
/* @var $this FactorProcesoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Factor Procesos',
);
$baseUrl = Yii::app()->baseUrl; 
$cs = Yii::app()->getClientScript();
$cs->registerCssFile($baseUrl.'/css/gridViewStyle/gridView.css');
$cs->registerCssFile($baseUrl.'/css/custom.css');
$cs->registerCssFile($baseUrl.'/css/jquery.toastmessage.css');
$cs->registerScriptFile($baseUrl.'/js/jquery.toastmessage.js');

$this->menu=array(
        array('label'=>'Guardar', 'url'=>'#','linkOptions'=>array('onClick'=>"$('#caracteristica-agregar-preguntas').submit()")),
      array('label'=>'Agregar/Editar Preguntas', 'url'=>array('agregarPreguntasTodas'))
        
);
?>
<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'caracteristica-agregar-preguntas',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>
 
<div class="grid-view rounded">
<table class="items">
<tr class="row">    
<th>Pregunta</th>

    <?php foreach ($fuentes as $fuente) { ?>
    <th><?php echo $fuente->nombre; ?></th>
    <?php } ?>
</tr>
<?php foreach ($preguntas as $i=>$pregunta) {?>

<tr class="<?php if($i%2==0) echo 'odd'; else echo 'even'; ?>">    

<td>
    <?php echo ($i+1); ?> .
                <?php echo CHtml::ActiveHiddenField($pregunta,"[$i]id_pregunta_proceso"); ?>
		<?php echo $pregunta->enunciado; ?>
		
</td>
<?php $j=0; ?>
<?php $nfuentes=count($pregunta->fuentes); ?>
<?php foreach ($fuentes as $fuente) { ?>
<?php $valor=false; ?>
    <?php if($j<$nfuentes) {?>
    <?php if($fuente->id_fuente_proceso==$pregunta->fuentes[$j]->id_fuente_proceso ){ ?>
    
    <?php $valor=true; ?>
    <?php $j++; ?>
    <?php } ?>
    <?php } ?>
    <td style="text-align: center"><?php echo CHtml::checkBox("fuentes[$i][$fuente->id_fuente_proceso]",$valor); ?></td>
<?php } ?>
</tr>
<?php } ?>
</table>

</div>
</div>
  

<?php $this->endWidget(); ?>
 <script>
      <?php
      if($guardado==1){ ?>
      $().toastmessage('showToast', {
                text: 'Los cambios han sido almacenados con éxito.',
                sticky: false,
                position: 'middle-right',
                type: 'success',
                closeText: '',
             
            });
      <?php } ?>
 </script>