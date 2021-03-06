
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
				'actions'=>array('create','update','preguntas','asignarPreguntas','editarPreguntas','agregarPreguntas','agregarPreguntasTodas','borrarPregunta'),
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
                $idProceso = Yii::app()->session['idProceso'];
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['CaracteristicaProceso']))
		{
			$model->attributes=$_POST['CaracteristicaProceso'];
			if($model->save())
				$this->redirect(array('index','idFactor'=>$model->id_factor_proceso));
		}

		$this->render('create',array(
			'model'=>$model,
                        'idProceso'=>$idProceso
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
                $idProceso =  $this->getProceso();
		// Uncomment the following line if AJAX validation is needed
		// $this->performAjaxValidation($model);

		if(isset($_POST['CaracteristicaProceso']))
		{
			$model->attributes=$_POST['CaracteristicaProceso'];
			if($model->save())
				$this->redirect(array('index','idFactor'=>$model->id_factor_proceso));
		}

		$this->render('update',array(
			'model'=>$model,'idProceso'=>$idProceso
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
	public function actionIndex($idFactor=null)
	{

         $model=new CaracteristicaProceso('search',$idFactor);
		$model->unsetAttributes();  // clear any default values
		if(isset($_GET['CaracteristicaProceso']))
			$model->attributes=$_GET['CaracteristicaProceso'];   
        
		

		$this->render('admin',array(
			'model'=>$model, 'idFactor'=>$idFactor
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
        public function actionAsignarPreguntas()
        {
        $idProceso = Yii::app()->session['idProceso'];     
        $fuentes = FuenteProceso::model()->findAllByAttributes(array("id_proceso"=>$idProceso));
        $guardado=0;
        if(isset($_POST['PreguntaProceso']) )
        {
            foreach($_POST['PreguntaProceso'] as $i=>$pregunta)
            {    
            PreguntaFuenteProceso::model()->deleteAllByAttributes(array("id_pregunta_proceso"=>$pregunta['id_pregunta_proceso']));
          
            foreach($fuentes as $fuente) 
             {
               if(isset($_POST['fuentes'][$i][$fuente->id_fuente_proceso])) 
               {  
            
                  
                $model = new PreguntaFuenteProceso();
                $model->id_fuente_proceso=$fuente->id_fuente_proceso;
                $model->id_pregunta_proceso=$pregunta['id_pregunta_proceso'];
                
                $guardado=$model->save();
          
                       
               }  
             }
          
            }
            
           
 
            
        }
        
        
        
        $preguntas = PreguntaProceso::model()->with('fuentes')->findAllByAttributes(array("id_proceso"=>$idProceso));	  
        
        
        $this->render('asignarPreguntas',array(
			
                        'preguntas'=>$preguntas,
                        'fuentes'=>$fuentes,
                        'guardado'=>$guardado,
		));
            
        }

        public function actionEditarPreguntas($idCaracteristica)
        {
        $idProceso = Yii::app()->session['idProceso'];     
        $fuentes = FuenteProceso::model()->findAllByAttributes(array("id_proceso"=>$idProceso));
        if(isset($_POST['idCaracteristica']))
        {        
        if(isset($_POST['PreguntaProceso']) )
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
            
           
 
            
        }
                    $this->redirect(array('preguntas','idCaracteristica'=>$_POST['idCaracteristica']));
        }
        
        
        $caracteristica = CaracteristicaProceso::model()->with('preguntas.fuentes')->findByPk($idCaracteristica);	  
        
        
        $this->render('editarPreguntas',array(
			
                        'caracteristica'=>$caracteristica,
                        'fuentes'=>$fuentes,
		));
        }
        function actionAgregarPreguntasTodas()
        {
            
        $idProceso = Yii::app()->session['idProceso'];     
      
            
        $preguntas= PreguntaProceso::model()->findAll('id_proceso=:id_proceso', array(':id_proceso'=>$idProceso));
        
        $this->render('agregarPreguntasTodas',array(
			
                        'preguntas'=>$preguntas,
                        
                        
		));
       
        }
	function actionAgregarPreguntas($idCaracteristica)
        {
            
        $idProceso = Yii::app()->session['idProceso'];     
      
        if(isset($_POST['pregunta']))
        {
            $preguntas= CaracteristicaPreguntaProceso::model()->findAllByAttributes(array('id_caracteristica_proceso'=>$idCaracteristica));
            foreach($preguntas as $i=>$pregunta)
            {        
                if(isset($_POST['pregunta'][$pregunta->id_pregunta_proceso]))
                {    
               
                if($_POST['pregunta'][$pregunta->id_pregunta_proceso]==0)
                {
                    CaracteristicaPreguntaProceso::model()->deleteAllByAttributes(array('id_caracteristica_proceso'=>$idCaracteristica,'id_pregunta_proceso'=>$pregunta->id_pregunta_proceso));
                    
                }
                unset($_POST['pregunta'][$pregunta->id_pregunta_proceso]);
                }
            }
           
            foreach ($_POST['pregunta'] as $i=>$pregunta)
            {
             
              if($pregunta)
               {    
               $model = new CaracteristicaPreguntaProceso();
               $model->id_caracteristica_proceso=$idCaracteristica;
               $model->id_pregunta_proceso=$i;
               $model->save();
               } 
            }

             $this->redirect(array('preguntas','idCaracteristica'=>$_POST['idCaracteristica']));
          
            }
            
        $preguntas= PreguntaProceso::model()->findAll('id_proceso=:id_proceso', array(':id_proceso'=>$idProceso));
        $caracteristica = CaracteristicaProceso::model()->findByPk($idCaracteristica);
       
        $this->render('agregarPreguntas',array(
			
                        'preguntas'=>$preguntas,
                        'caracteristica'=>$caracteristica,
                        
		));
       
        }
        /**
	 * Manages all models.
	 */
	public function actionBorrarPregunta($idPregunta,$idCaracteristica)
        {
            if(Respuesta::model()->findByAttributes(array("id_pregunta_proceso"=>$idPregunta))==null)
            {    
            PreguntaFuenteProceso::model()->deleteAllByAttributes(array("id_pregunta_proceso"=>$idPregunta));
            CaracteristicaPreguntaProceso::model()->deleteAllByAttributes(array("id_pregunta_proceso"=>$idPregunta));
            PreguntaProceso::model()->deleteByPk($idPregunta);
            }
            else 
            {
                echo "<script>alert('No se puede borrar esta pregunta porque tiene respuestas asociadas en este proceso.')</script>";
            }
            $preguntas= PreguntaProceso::model()->findAll();
            if($idCaracteristica!=0)
            {    
            $caracteristica = CaracteristicaProceso::model()->findByPk($idCaracteristica);
            $this->redirect("index.php?r=caracteristicaProceso/agregarPreguntas&idCaracteristica=".$idCaracteristica);
            }
            else {
                 $this->redirect("index.php?r=caracteristicaProceso/agregarPreguntasTodas");
            }
        
        }        
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
