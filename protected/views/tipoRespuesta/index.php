<?php
/* @var $this TipoRespuestaController */
/* @var $dataProvider CActiveDataProvider */

?>

<h1>Tipo Respuestas</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
