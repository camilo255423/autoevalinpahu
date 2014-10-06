<?php
/* @var $this CaracteristicaProcesoController */
/* @var $model CaracteristicaProceso */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'caracteristica-nueva-pregunta',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Campos con <span class="required">*</span> son obligatorios.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
                <?php echo $form->labelEx($model,'titulo'); ?>
		<?php echo $form->textField($model,'titulo',array('size'=>60,'maxlength'=>200)); ?>
		<?php echo $form->error($model,'titulo'); ?>
	</div>

	<div class="row">
                <?php echo $form->labelEx($model,'descripcion'); ?>
		<?php echo $form->textArea($model,'descripcion',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'descripcion'); ?>
	</div>

	<div class="row">
                <?php echo $form->labelEx($model,'numero_caracteristica'); ?>
		<?php echo $form->textField($model,'numero_caracteristica'); ?>
		<?php echo $form->error($model,'numero_caracteristica'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'id_factor_proceso'); ?>
		<div><?php echo $form->dropDownList($model, "id_factor_proceso", CHtml::listData(FactorProceso::model()->findAllByAttributes(array('id_proceso'=>$idProceso)), 'id_factor_proceso','titulo'),array('empty'=>'Seleccionar...')); ?></div>
		<?php echo $form->error($model,'id_factor_proceso'); ?>
           
	</div>


<?php $this->endWidget(); ?>

</div><!-- form -->