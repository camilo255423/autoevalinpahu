<?php
/* @var $this ProcesoController */
/* @var $model Proceso */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'proceso-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<label for="Proceso_fecha_inicio" class="required">Fecha de Inicio <span class="required">*</span></label>		<input name="Proceso[fecha_inicio]" id="Proceso_fecha_inicio" type="date" />			
        <?php echo $form->error($model,'fecha_inicio'); ?>
        </div>

	<div class="row">
		<label for="Proceso_fecha_fin" class="required">Fecha de Finalización <span class="required">*</span></label>		<input name="Proceso[fecha_fin]" id="Proceso_fecha_fin" type="date" />			
        <?php echo $form->error($model,'fecha_fin'); ?>
        </div>

	<div class="row">
		Tipo de Proceso:
		<?php echo $form->dropDownList($model, 'id_tipo_proceso', CHtml::listData(TipoProceso::model()->findAll(), 'id_tipo_proceso','nombre')); ?>
		<?php echo $form->error($model,'id_tipo_proceso'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'descripcion'); ?>
		<?php echo $form->textArea($model,'descripcion',array('rows'=>6, 'cols'=>50)); ?>
		<?php echo $form->error($model,'descripcion'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->