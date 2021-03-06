<?php

class FuenteProcesoController extends Controller
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
				'actions'=>array('create','update', 'instrumentoFuente','previsualizar'),
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
		$model=new FuenteProceso;

		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['FuenteProceso']))
		{
			$model->attributes=$_POST['FuenteProceso'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id_fuente_proceso));
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

		if(isset($_POST['FuenteProceso']))
		{
			$model->attributes=$_POST['FuenteProceso'];
			if($model->save())
				$this->redirect(array('view','id'=>$model->id_fuente_proceso));
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
        public function actionIndex()
	{
        $idProceso=Yii::app()->session['idProceso'];
	$model = FuenteProceso::model()->findAllByAttributes(array('id_proceso'=>$idProceso));
        $this->render('index',array(
			'model'=>$model,
		));
        }
        public function actionInstrumentoFuente($idFuente)
        {
            $i=0;
            $guardado=0;
            if($_POST)
            {
              if(!isset($_POST['previsualizando']))
              {    
                $idFuente = $_POST['idFuente'];
                $fuente = FuenteProceso::model()->findByPk($idFuente);
                $fuente->enunciado = $_POST['FuenteProceso']['enunciado'];
               
                $fuente->save();
              if(isset($_POST['PreguntaProceso']))
              {      
                foreach($_POST['PreguntaProceso'] as $pregunta)
                {
                $pregunta = PreguntaFuenteProceso::model()->findByAttributes(array('id_pregunta_proceso'=>$pregunta['id_pregunta_proceso'],'id_fuente_proceso'=>$idFuente));
                if($pregunta!=null)
                {
                    $pregunta->orden = $i;
                    $guardado=$pregunta->save();
                    $i++;
                    
                }
                }
              } 
                  
            }
            }
            
        $fuente = FuenteProceso::model()->findByPk($idFuente);    
        $this->render('instrumentoFuente',array(
			'fuente'=>$fuente,
                        'guardado'=>$guardado
		));
        }
        public function actionPrevisualizar($idFuente)
        {
             $fuente = FuenteProceso::model()->with('preguntas')->findByPk($idFuente);  
        $respuestas=array();
        foreach ($fuente->preguntas as $i=>$pregunta)
        {
            $respuesta = new Respuesta();
            $respuesta->id_fuente_proceso = $idFuente;
            $respuesta->id_usuario_proceso = 0;
            $respuesta->id_pregunta_proceso = $pregunta->id_pregunta_proceso;
            array_push($respuestas, $respuesta);
        }
        $this->render('vistaCuestionario',array(
			'fuente'=>$fuente,
                        'respuestas'=>$respuestas,
		));
        }
	/**
	 * Manages all models.
	 */
	public function actionAdmin()
	{
		$model=new FuenteProceso('search');
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['FuenteProceso']))
			$model->attributes=$_GET['FuenteProceso'];

		$this->render('admin',array(
			'model'=>$model,
		));
	}

	/**
	 * Returns the data model based on the primary key given in the GET variable.
	 * If the data model is not found, an HTTP exception will be raised.
	 * @param integer $id the ID of the model to be loaded
	 * @return FuenteProceso the loaded model
	 * @throws CHttpException
	 */
	public function loadModel($id)
	{
		$model=FuenteProceso::model()->findByPk($id);
		if($model===null)
			throw new CHttpException(404,'The requested page does not exist.');
		return $model;
	}

	/**
	 * Performs the AJAX validation.
	 * @param FuenteProceso $model the model to be validated
	 */
	protected function performAjaxValidation($model)
	{
		if(isset($_POST['ajax']) && $_POST['ajax']==='fuente-proceso-form')
		{
			echo CActiveForm::validate($model);
			Yii::app()->end();
		}
	}
}
