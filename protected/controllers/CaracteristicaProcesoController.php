<?php

class CaracteristicaProcesoController extends Controller
{
	/**
	 * @var string the default layout for the views. Defaults to '//layouts/column2', meaning
	 * using two-column layout. See 'protected/views/layouts/column2.php'.
	 */
	public $layout='//layouts/column2';

	/**
	 * @return array action filters
	 */
	public function filters()
	{
		return array(
			'accessControl', // perform access control for CRUD operations
			'postOnly + delete', // we only allow deletion via POST request
		);
	}

	/**
	 * Specifies the access control rules.
	 * This method is used by the 'accessControl' filter.
	 * @return array access control rules
	 */
	public function accessRules()
	{
		return array(
			array('allow',  // allow all users to perform 'index' and 'view' actions
				'actions'=>array('index','view'),
				'users'=>array('*'),
			),
			array('allow', // allow authenticated user to perform 'create' and 'update' actions
				'actions'=>array('create','update','preguntas','editarPreguntas'),
				'users'=>array('@'),
			),
			array('allow', // allow admin user to perform 'admin' and 'delete' actions
				'actions'=>array('admin','delete'),
				'users'=>array('admin'),
			),
			array('deny',  // deny all users
				'users'=>array('*'),
			),
		);
	}

	/**
	 * Displays a particular model.
	 * @param integer $id the ID of the model to be displayed
	 */
	public function actionView($id)
	{
		$this->render('view',array(
			'model'=>$this->loadModel($id),
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate()
	{
		$model=new CaracteristicaProceso;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['CaracteristicaProceso']))
		{
			$model->attributes=$_POST['CaracteristicaProceso'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id_caracteristica_proceso));
		}

		$this->render('create',array(
			'model'=>$model,
		));
	}

	/**
	 * Updates a particular model.
	 * If update is successful, the browser will be redirected to the 'view' page.
	 * @param integer $id the ID of the model to be updated
	 */
	public function actionUpdate($id)
	{
		$model=$this->loadModel($id);

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['CaracteristicaProceso']))
		{
			$model->attributes=$_POST['CaracteristicaProceso'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id_caracteristica_proceso));
		}

		$this->render('update',array(
			'model'=>$model,
		));
	}

	/**
	 * Deletes a particular model.
	 * If deletion is successful, the browser will be redirected to the 'admin' page.
	 * @param integer $id the ID of the model to be deleted
	 */
	public function actionDelete($id)
	{
		$this->loadModel($id)->delete();

		// if AJAX request (triggered by deletion via admin grid view), we should not redirect the browser
		if(!isset($_GET['ajax']))
			$this->redirect(isset($_POST['returnUrl']) ? $_POST['returnUrl'] : array('admin'));
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex($idFactor)
	{
	$factor = FactorProceso::model()->findByPk($idFactor);	  
	$model = CaracteristicaProceso::model()->findAllByAttributes(array('id_factor_proceso'=>$idFactor),array('order'=>'numero_caracteristica'));
        $this->render('index',array(
			'model'=>$model,
                        'factor'=>$factor,
		));
	}
        
        public function actionPreguntas($idCaracteristica)
        {
        $idProceso = Yii::app()->session['idProceso'];    
        $caracteristica = CaracteristicaProceso::model()->with('preguntas.fuentes')->findByPk($idCaracteristica);	  
        $fuentes = FuenteProceso::model()->findAllByAttributes(array("id_proceso"=>$idProceso));
        
        $this->render('preguntas',array(
			
                        'caracteristica'=>$caracteristica,
                        'fuentes'=>$fuentes,
		));
        }
        public function actionEditarPreguntas($idCaracteristica)
        {
        $idProceso = Yii::app()->session['idProceso'];     
        $fuentes = FuenteProceso::model()->findAllByAttributes(array("id_proceso"=>$idProceso));
       
        if(isset($_POST['PreguntaProceso']))
        {
            foreach($_POST['PreguntaProceso'] as $i=>$pregunta)
            {    
            $model=PreguntaProceso::model()->findByPk($pregunta['id_pregunta_proceso']);
            $model->enunciado = $pregunta['enunciado'];
            $model->save();
            PreguntaFuenteProceso::model()->deleteAllByAttributes(array("id_pregunta_proceso"=>$pregunta['id_pregunta_proceso']));
          
            foreach($fuentes as $fuente) 
             {
               if(isset($_POST['fuentes'][$i][$fuente->id_fuente_proceso])) 
               {  
            
                  
                $model = new PreguntaFuenteProceso();
                $model->id_fuente_proceso=$fuente->id_fuente_proceso;
                $model->id_pregunta_proceso=$pregunta['id_pregunta_proceso'];
              
                $model->save();
                       
               }  
             }
          
            }
            
           
             $this->redirect(array('preguntas','idCaracteristica'=>$_POST['idCaracteristica']));
            
        }    
        $caracteristica = CaracteristicaProceso::model()->with('preguntas.fuentes')->findByPk($idCaracteristica);	  
        
        
        $this->render('editarPreguntas',array(
			
                        'caracteristica'=>$caracteristica,
                        'fuentes'=>$fuentes,
		));
        }
	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new CaracteristicaProceso('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['CaracteristicaProceso']))
			$model->attributes=$_GET['CaracteristicaProceso'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return CaracteristicaProceso the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=CaracteristicaProceso::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param CaracteristicaProceso $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='caracteristica-proceso-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
