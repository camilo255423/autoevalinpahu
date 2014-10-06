<?php
/* @var $this PreguntaProcesoController */
/* @var $model PreguntaProceso */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id_pregunta_proceso'); ?>
		<?php echo $form->textField($model,'id_pregunta_proceso'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'enunciado'); ?>
		<?php echo $form->textArea($model,'enunciado',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'id_tipo_respuesta'); ?>
		<?php echo $form->textField($model,'id_tipo_respuesta'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->