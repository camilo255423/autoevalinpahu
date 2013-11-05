<?php

class ReportesController extends Controller
{
	public function actionIndex()
	{
         
            
            $idProceso = Yii::app()->session['idProceso'];
            $this->render('index',array(
			'idProceso'=>$idProceso,
		)); 
            
           
	}
        public function actionActualizar()
        {
            
            $idCaracteristica = $_POST['id_caracteristica'];
           
            $this->renderPartial('_contenido',array('idCaracteristica'=>$idCaracteristica),false, true);
        } 
        public function actionActualizarLista()
        {
            $idFactor = (int) $_POST['id_factor_proceso'];
           $data=  CaracteristicaProceso::model()->findAll('id_factor_proceso=:id_factor_proceso', 
             array(':id_factor_proceso'=>$idFactor));
            $data=CHtml::listData($data,'id_caracteristica_proceso','titulo');
            
            foreach($data as $value=>$name)
            {
                echo CHtml::tag('option',
                           array('value'=>$value),CHtml::encode($name),true);
            }
        }
	// Uncomment the following methods and override them if needed
	/*
	public function filters()
	{
		// return the filter configuration for this controller, e.g.:
		return array(
			'inlineFilterName',
			array(
				'class'=>'path.to.FilterClass',
				'propertyName'=>'propertyValue',
			),
		);
	}

	public function actions()
	{
		// return external action classes, e.g.:
		return array(
			'action1'=>'path.to.ActionClass',
			'action2'=>array(
				'class'=>'path.to.AnotherActionClass',
				'propertyName'=>'propertyValue',
			),
		);
	}
	*/
}