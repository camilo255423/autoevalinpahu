<?php

class DatosController extends Controller
{
	public function actionIndex()
	{
            for($id_fuente=1; $id_fuente<=3; $id_fuente++)
            {
            for($u=1;$u<=100;$u++)
            {
            $usuario = new UsuarioFuenteProceso(); 
            $usuario->id_fuente_proceso=$id_fuente;
            $usuario->id_usuario_proceso= 91628690 + $u;
            $usuario->usuario_proceso=$usuario->id_usuario_proceso;
            $usuario->save();
            $preguntas = PreguntaFuenteProceso::model()->findAllByAttributes(array('id_fuente_proceso'=>$id_fuente));
                foreach( $preguntas as $pregunta)
                {
                     $respuesta = new Respuesta();
                     $respuesta->id_fuente_proceso = $id_fuente;
                     $respuesta->id_opcion = rand(1,5);
                     $respuesta->id_pregunta_proceso = $pregunta->id_pregunta_proceso;
                     $respuesta->id_usuario_proceso = $usuario->id_usuario_proceso;
                     $respuesta->save();
                }    
            
            
            }
            }
            
		$this->render('index');
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