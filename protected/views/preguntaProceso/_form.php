<?php
/* @var $this PreguntaProcesoController */
/* @var $model PreguntaProceso */
/* @var $form CActiveForm */
$baseUrl = Yii::app()->baseUrl; 
$cs = Yii::app()->getClientScript();
$cs->registerCssFile($baseUrl.'/css/custom.css');
?>


<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'pregunta-proceso-form',
        'enableClientValidation'=>false,
	'clientOptions'=>array(
		'validateOnSubmit'=>true,
	),
)); ?>
<?php if(isset($idCaracteristica)) echo CHtml::hiddenField("idCaracteristica",$idCaracteristica);?>
	<p class="note">Campos con<span class="required">*</span> son obligatorios.</p>

	<?php echo $form->errorSummary($model); ?>
        
	<div class="row">
		<?php echo $form->labelEx($model,'enunciado'); ?>
		<?php echo $form->textArea($model,'enunciado',array('rows'=>6, 'cols'=>50, 'id'=>'styled')); ?>
		<?php echo $form->error($model,'enunciado'); ?>
	</div>

	 <td>
             <div>Tipo de Respuesta: </div>   
         <?php echo $form->dropDownList($model, "id_tipo_respuesta", CHtml::listData(TipoRespuesta::model()->findAll(), 'id_tipo_respuesta','titulo'),array('empty'=>'Seleccionar...')); ?>
         <?php echo $form->error($model, "id_tipo_respuesta"); ?>
         </td>

	

<?php $this->endWidget(); ?>

</div><!-- form -->