<?php

class TipoRespuestaController extends Controller
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
				'actions'=>array('admin','delete','borrar'),
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
		$model=new TipoRespuesta;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['TipoRespuesta']))
		{
			$model->attributes=$_POST['TipoRespuesta'];
			if($model->save())
				$this->redirect(array('admin'));
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

		if(isset($_POST['TipoRespuesta']))
		{
			$model->attributes=$_POST['TipoRespuesta'];
			if($model->save())
				$this->redirect(array('admin'));
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
            $respuestas = PreguntaProceso::model()->findByAttributes(array("id_tipo_respuesta"=>$id));
                if($respuestas==null)
                {    
                    $tipoRespuesta=TipoRespuesta::model()->findByPk($id)->with('opcionesRespuesta.respuestas');
                    $i=0;
                    foreach($tipoRespuesta->opcionesRespuestas as $opcionesRespuesta)
                    {
                    if(count($opcionesRespuesta->respuestas)>0) $i++;    
                    }
                        if($i==0)
                        {    
                            foreach($tipoRespuesta->opcionesRespuestas as $opcionesRespuesta)
                            {
                            $opcionesRespuesta->delete();    
                            }
                            $tipoRespuesta->delete();
                            $status=array('status' => 'succesful', 'message' => 'ok.');

                        }
                        else
                        {
                            $status=array('status' => 'error', 'message' => 'No se puede borrar este tipo de pregunta porque ya hay procesos asociados.');

                        }    

                    
                
                }
                else
                {    
                $status=array('status' => 'error', 'message' => 'Este tipo de respuesta no se puede eliminar porque ya existen preguntas asociadas.');
                }
                header('Content-type: application/json');
                echo json_encode($status);
            
        }

	/**
	 * Lists all models.
	 */
	public function actionIndex()
	{
		$dataProvider=new CActiveDataProvider('TipoRespuesta');
		$this->render('index',array(
			'dataProvider'=>$dataProvider,
		));
	}

	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new TipoRespuesta('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['TipoRespuesta']))
			$model->attributes=$_GET['TipoRespuesta'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return TipoRespuesta the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=TipoRespuesta::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param TipoRespuesta $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='tipo-respuesta-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
