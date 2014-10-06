<?php
/* @var $this OpcionesRespuestaController */
/* @var $model OpcionesRespuesta */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id_opcion'); ?>
		<?php echo $form->textField($model,'id_opcion'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'respuesta'); ?>
		<?php echo $form->textField($model,'respuesta',array('size'=>60,'maxlength'=>200)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'valor'); ?>
		<?php echo $form->textField($model,'valor'); ?>
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