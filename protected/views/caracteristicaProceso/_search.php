<?php
/* @var $this CaracteristicaProcesoController */
/* @var $model CaracteristicaProceso */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id_caracteristica_proceso'); ?>
		<?php echo $form->textField($model,'id_caracteristica_proceso'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'titulo'); ?>
		<?php echo $form->textField($model,'titulo',array('size'=>60,'maxlength'=>200)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'descripcion'); ?>
		<?php echo $form->textArea($model,'descripcion',array('rows'=>6, 'cols'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numero_caracteristica'); ?>
		<?php echo $form->textField($model,'numero_caracteristica'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'id_factor_proceso'); ?>
		<?php echo $form->textField($model,'id_factor_proceso'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->