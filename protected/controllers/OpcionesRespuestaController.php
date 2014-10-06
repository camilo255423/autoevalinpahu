<?php

class OpcionesRespuestaController extends Controller
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
				'actions'=>array('create','update'),
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
	public function actionView($idTipoRespuesta)
	{
            $opcionesRespuesta = OpcionesRespuesta::model()->findAllByAttributes();
		$this->render('admin',array(
			'model'=>$opcionesRespuesta,
		));
	}

	/**
	 * Creates a new model.
	 * If creation is successful, the browser will be redirected to the 'view' page.
	 */
	public function actionCreate($idTipoRespuesta)
	{
		$model=new OpcionesRespuesta;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['OpcionesRespuesta']))
		{
			$model->attributes=$_POST['OpcionesRespuesta'];
			if($model->save())
				$this->redirect(array('index','idTipoRespuesta'=>$model->id_tipo_respuesta));
		}
                $model->id_tipo_respuesta=$idTipoRespuesta;
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

		if(isset($_POST['OpcionesRespuesta']))
		{
			$model->attributes=$_POST['OpcionesRespuesta'];
			if($model->save())
				$this->redirect(array('index','idTipoRespuesta'=>$model->id_tipo_respuesta));
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
		$respuestas = Respuesta::model()->findByAttributes(array("id_opcion"=>$id));
                if($respuestas==null)
                {    
                $this->loadModel($id)->delete();
                $status=array('status' => 'succesful', 'message' => 'ok.');
               
                }
                else
                {    
                $status=array('status' => 'error', 'message' => 'Esta respuesta no se puede eliminar porque ya existen procesos asociados.');
                }
                header('Content-type: application/json');
                echo json_encode($status);
		
	}

	/**
	 * Lists all models.
	 */
	public function actionIndex($idTipoRespuesta)
	{
            /*
		$dataProvider=new CActiveDataProvider('OpcionesRespuesta');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
             * 
             */
          $model=new OpcionesRespuesta('search',$idTipoRespuesta);  
          $tipoRespuesta = TipoRespuesta::model()->findByPk($idTipoRespuesta);
		$this->render('admin',array(
			'model'=>$model,
                        'idTipoRespuesta'=>$idTipoRespuesta,
                        'tipoRespuesta'=>$tipoRespuesta
		));
	
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new OpcionesRespuesta('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['OpcionesRespuesta']))
			$model->attributes=$_GET['OpcionesRespuesta'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return OpcionesRespuesta the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=OpcionesRespuesta::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param OpcionesRespuesta $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='opciones-respuesta-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
