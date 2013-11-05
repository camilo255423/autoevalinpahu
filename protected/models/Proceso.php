<?php

/**
 * This is the model class for table "proceso".
 *
 * The followings are the available columns in table 'proceso':
 * @property integer $id_proceso
 * @property string $fecha_inicio
 * @property string $fecha_fin
 * @property integer $id_tipo_proceso
 * @property string $descripcion
 *
 * The followings are the available model relations:
 * @property FactorProceso $factorProceso
 * @property TipoProceso $idProceso
 */
class Proceso extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'proceso';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('fecha_inicio, fecha_fin, id_tipo_proceso, descripcion', 'required'),
			array('id_tipo_proceso', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id_proceso, fecha_inicio, fecha_fin, id_tipo_proceso, descripcion', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
			'factorProceso' => array(self::HAS_ONE, 'FactorProceso', 'id_factor_proceso'),
			'idProceso' => array(self::BELONGS_TO, 'TipoProceso', 'id_proceso'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_proceso' => 'Id Proceso',
			'fecha_inicio' => 'Fecha Inicio',
			'fecha_fin' => 'Fecha Fin',
			'id_tipo_proceso' => 'Id Tipo Proceso',
			'descripcion' => 'Descripcion',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id_proceso',$this->id_proceso);
		$criteria->compare('fecha_inicio',$this->fecha_inicio,true);
		$criteria->compare('fecha_fin',$this->fecha_fin,true);
		$criteria->compare('id_tipo_proceso',$this->id_tipo_proceso);
		$criteria->compare('descripcion',$this->descripcion,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Proceso the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
        protected function afterSave() {
        parent::afterSave();
          if($this->isNewRecord)
            {
                echo "es nuevo";
            }
            else {
                echo "es viejo";
            }
            exit();
        }
        public function clonar()
        {
            $idProceso=1;
            $idProcesoNuevo=2;
           //Factor
            $factores = FactorProceso::model()->with('caracteristicas.preguntas')->findAllByAttributes(array("id_proceso"=>$idProceso));
            $preguntas = PreguntaProceso::model()->findAllByAttributes(array("id_proceso"=>$idProceso));
                foreach($preguntas as $pregunta)
                {
                 $pregunta->isNewRecord=true;
                 $pregunta->id_pregunta_proceso="";
                 $pregunta->id_proceso=$idProcesoNuevo;
                 $pregunta->save(); 
                }  
            foreach($factores as $factor)
            {
               
                $factor->id_factor_proceso="";
                $factor->id_proceso=$idProcesoNuevo;
                $factor->isNewRecord=true;
                $factor->save();
                 
                foreach($factor->caracteristicas as $caracteristica)
                {
                        $caracteristica->isNewRecord=true;
                        $caracteristica->id_caracteristica_proceso="";
                        $caracteristica->id_factor_proceso= $factor->id_factor_proceso;
                        $caracteristica->save();
                        print_r($caracteristica->errors);
                        exit();
                        foreach($caracteristica->preguntas as $pregunta)
                        {
                         
                            $caracterisitcaPregunta = new CaracteristicaPreguntaProceso();
                            $caracterisitcaPregunta->id_caracteristica_proceso=$caracteristica->id_caracteristica_proceso;
                            $caracterisitcaPregunta->id_pregunta_proceso=$pregunta->id_pregunta_proceso;
                            
                        }    
                                
                }    
            }    
            $fuentes = FuenteProceso::model()->with('preguntas')->findAllByAttributes(array("id_proceso"=>$idProceso));
            foreach($fuentes as $fuente)
            {
                $fuente->isNewRecord=true;
                $fuente->id_fuente_proceso="";
                $fuente->id_proceso=$idProcesoNuevo;
                $fuente->save();
                foreach($fuente->preguntas as $pregunta)
                {
                    $fuentePregunta = new PreguntaFuenteProceso();
                    $fuentePregunta->id_fuente_proceso=$fuente->id_fuente_proceso;
                    $fuentePregunta->id_pregunta_proceso=$pregunta->id_pregunta_proceso;
                    $fuentePregunta->save();
                }   
                
            }    
        }        
          
               
}
