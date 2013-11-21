<?php

/**
 * This is the model class for table "factor_proceso".
 *
 * The followings are the available columns in table 'factor_proceso':
 * @property integer $id_factor_proceso
 * @property integer $id_proceso
 * @property string $titulo
 * @property string $descripcion
 * @property integer $numero_factor
 *
 * The followings are the available model relations:
 * @property CaracteristicaProceso[] $caracteristicaProcesos
 * @property Proceso $idProceso
 */
class FactorProceso extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'factor_proceso';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id_proceso, titulo, numero_factor', 'required'),
			array('id_proceso, numero_factor', 'numerical', 'integerOnly'=>true),
			array('titulo', 'length', 'max'=>200),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id_factor_proceso, id_proceso, titulo, descripcion, numero_factor', 'safe', 'on'=>'search'),
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
			'caracteristicas' => array(self::HAS_MANY, 'CaracteristicaProceso', 'id_factor_proceso'),
			'idProceso' => array(self::BELONGS_TO, 'Proceso', 'id_proceso'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_factor_proceso' => 'Id Factor Proceso',
			'id_proceso' => 'Id Proceso',
			'titulo' => 'Factor',
			'descripcion' => 'Descripcion',
			'numero_factor' => 'Numero Factor',
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
         
                $idProceso = Yii::app()->session['idProceso'];
                $criteria->condition = 'id_proceso=:idProceso';
                $criteria->params = array(':idProceso'=>$idProceso);
     
		$criteria->compare('Factor',$this->titulo,true);
		$criteria->compare('Descripción',$this->descripcion,true);
		
		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return FactorProceso the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
