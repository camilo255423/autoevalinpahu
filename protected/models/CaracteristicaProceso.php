<?php

/**
 * This is the model class for table "caracteristica_proceso".
 *
 * The followings are the available columns in table 'caracteristica_proceso':
 * @property integer $id_caracteristica_proceso
 * @property string $titulo
 * @property string $descripcion
 * @property integer $numero_caracteristica
 * @property integer $id_factor_proceso
 *
 * The followings are the available model relations:
 * @property CaracteristicaPreguntaProceso[] $caracteristicaPreguntaProcesos
 * @property FactorProceso $idFactorProceso
 */
class CaracteristicaProceso extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'caracteristica_proceso';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('titulo, descripcion, numero_caracteristica, id_factor_proceso', 'required'),
			array('numero_caracteristica, id_factor_proceso', 'numerical', 'integerOnly'=>true),
			array('titulo', 'length', 'max'=>200),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id_caracteristica_proceso, titulo, descripcion, numero_caracteristica, id_factor_proceso', 'safe', 'on'=>'search'),
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
			'preguntas' => array(self::MANY_MANY, 'PreguntaProceso', 'caracteristica_pregunta_proceso(id_pregunta_proceso,id_caracteristica_proceso)'),
			'factor' => array(self::BELONGS_TO, 'FactorProceso', 'id_factor_proceso'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_caracteristica_proceso' => 'Id Caracteristica Proceso',
			'titulo' => 'Titulo',
			'descripcion' => 'Descripcion',
			'numero_caracteristica' => 'Numero Caracteristica',
			'id_factor_proceso' => 'Id Factor Proceso',
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
	public function search($idFactor)
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		  $criteria=new CDbCriteria;
                if($idFactor!=null)
                {    
                $criteria->condition = 'id_factor_proceso=:idFactor';
                }
                $criteria->params = array(':idFactor'=>$idFactor);
		$criteria->compare('id_caracteristica_proceso',$this->id_caracteristica_proceso);
		$criteria->compare('titulo',$this->titulo,true);
		$criteria->compare('descripcion',$this->descripcion,true);
		$criteria->compare('numero_caracteristica',$this->numero_caracteristica);
		$criteria->compare('id_factor_proceso',$this->id_factor_proceso);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return CaracteristicaProceso the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
