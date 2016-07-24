<?php

class ReportesController extends Controller
{
        public $layout='//layouts/column2';
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
        public function actionPie()
        {
            Yii::import('ext.phpexcel.XPHPExcel'); 
           $nfila=1;
           $npregunta=1;
           $objPHPExcel= XPHPExcel::createPHPExcel();
      
           $objPHPExcel->getProperties()->setCreator("Maarten Balliauw")
                                  ->setLastModifiedBy("Maarten Balliauw")
                                  ->setTitle("Office 2007 XLSX Test Document")
                                  ->setSubject("Office 2007 XLSX Test Document")
                                  ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
                                  ->setKeywords("office 2007 openxml php")
                                  ->setCategory("Test result file");

                $sheet=$objPHPExcel->getActiveSheet();

           ///
           
          $sheet->fromArray(array(
		array(  '', ''),
		array('k1',   12),
		array('k2',   56),
		array('k3',   52),
		array('k4',   30),
	));
	$categories = array(
		new PHPExcel_Chart_DataSeriesValues('String', 'Worksheet!$A$2:$A$5', null, 4)
	);
	$values = array(
		new PHPExcel_Chart_DataSeriesValues('Number', 'Worksheet!$B$2:$B$5', null, 4)
	);
        
	$series = new PHPExcel_Chart_DataSeries(
		PHPExcel_Chart_DataSeries::TYPE_PIECHART,       // plotType
		PHPExcel_Chart_DataSeries::GROUPING_STACKED,  // plotGrouping
		array(0,1,2,3),                                    	// plotOrder
		$values,                                        	// plotLabel
		$categories,                                    // plotCategory
		$values                                         // plotValues
	);
        Excel::adicionarTorta($sheet, $categories, $values, $series, 'A7', 'H20','titulo');
     // Rename worksheet
//     $objPHPExcel->getActiveSheet()->setTitle('Simple');

     // Set active sheet index to the first sheet, so Excel opens this as the first sheet
  //   $objPHPExcel->setActiveSheetIndex(0);


     // Redirect output to a clientâ€™s web browser (Excel5)
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="MyExcelFile.xlsx"');
     // If you're serving to IE 9, then the following may be needed
     header('Cache-Control: max-age=1');

     // If you're serving to IE over SSL, then the following may be needed
     header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
     header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
     header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
     header ('Pragma: public'); // HTTP/1.0

     $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
     $objWriter->setIncludeCharts(TRUE);
     $objWriter->save('php://output');
     Yii::app()->end();


            
        }

        public function actionMatriz()
        {
           Yii::import('ext.phpexcel.XPHPExcel'); 
           $nfila=1;
           $npregunta=1;
           $objPHPExcel= XPHPExcel::createPHPExcel();
      
     /*      $objPHPExcel->getProperties()->setCreator("Maarten Balliauw")
                                  ->setLastModifiedBy("Maarten Balliauw")
                                  ->setTitle("Office 2007 XLSX Test Document")
                                  ->setSubject("Office 2007 XLSX Test Document")
                                  ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
                                  ->setKeywords("office 2007 openxml php")
                                  ->setCategory("Test result file");
*/
          

            $objReader = PHPExcel_IOFactory::createReader('Excel5');
            $objPHPExcel = $objReader->load('/var/www/html/autoevalinpahu/protected/controllers/plantilla_matriz.xls'); 
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename="Matriz.xlsx"');
             // If you're serving to IE 9, then the following may be needed
            header('Cache-Control: max-age=1');

             // If you're serving to IE over SSL, then the following may be needed
            header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
            header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
            header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
            header ('Pragma: public'); // HTTP/1.0

            $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
            $objWriter->setIncludeCharts(TRUE);
            $objWriter->save('php://output');
            Yii::app()->end();                      

        }

        //Generación de EXCEL
        /**
         * 
         */
         public function actionExcel($idCaracteristica)
        {
             
           Yii::import('ext.phpexcel.XPHPExcel'); 
           $nfila=1;
           $npregunta=1;
           $objPHPExcel= XPHPExcel::createPHPExcel();
      
           $objPHPExcel->getProperties()->setCreator("Maarten Balliauw")
                                  ->setLastModifiedBy("Maarten Balliauw")
                                  ->setTitle("Office 2007 XLSX Test Document")
                                  ->setSubject("Office 2007 XLSX Test Document")
                                  ->setDescription("Test document for Office 2007 XLSX, generated using PHP classes.")
                                  ->setKeywords("office 2007 openxml php")
                                  ->setCategory("Test result file");


     // Add some data
     $caracteristica = CaracteristicaProceso::model()->with('preguntas.fuentes')->findByPk($idCaracteristica);
     
     $objPHPExcel->setActiveSheetIndex(0);
    
     $activeSheet=$objPHPExcel->getActiveSheet();
     
     $activeSheet->setCellValueByColumnAndRow(1,$nfila++,$caracteristica->titulo);
     $activeSheet->getRowDimension($nfila)->setRowHeight(18);
     $nfila++;
     
    
    
     foreach ($caracteristica->preguntas as $pregunta)
            {
        
            $nfila++;
            $activeSheet->setCellValueByColumnAndRow(1,$nfila++,$npregunta.'. '.$pregunta->enunciado);
            $npregunta++;
            $activeSheet->getRowDimension($nfila)->setRowHeight(18);
            $nfila++;
           
                foreach ($pregunta->fuentes as $fuente)
                {
                    $datos=$pregunta->estadisticaPorRespuesta($fuente->id_fuente_proceso);
                    $total=0;
                    
                    $nfila=$nfila+1;
                    $activeSheet->setCellValueByColumnAndRow(1,$nfila,'Respuesta');
                    $activeSheet->getRowDimension($nfila)->setRowHeight(18);
                    $activeSheet->setCellValueByColumnAndRow(2,$nfila,'No de '.$fuente->nombre);
                    $activeSheet->getRowDimension($nfila)->setRowHeight(18);
                    $activeSheet->setCellValueByColumnAndRow(3,$nfila++,'Porcentaje');
                    $activeSheet->getRowDimension($nfila)->setRowHeight(18);
                    
                     $inicio = $nfila;
                     $sinDatos=1;
                     $fin = $nfila+count($datos)-1;
                     
                    foreach($datos as $fila)
                    {
                       
                        $sinDatos=0;
                        $activeSheet->setCellValueByColumnAndRow(1,$nfila,$fila["respuesta"]);
                        $activeSheet->setCellValueByColumnAndRow(2,$nfila,$fila["conteo"]);
                        $activeSheet->setCellValueByColumnAndRow(3,$nfila,'=100*C'.$nfila.'/'.'C'.($fin+1));
                        $activeSheet->getRowDimension($nfila)->setRowHeight(18);
                        $nfila++;
     
                    }
                    
                    $activeSheet->setCellValueByColumnAndRow(1,$nfila,'Total');
                    if(!$sinDatos)
                    {
                        $activeSheet->setCellValueByColumnAndRow(2,$nfila,'=SUM(C'.$inicio.':C'.$fin.')');
                        $activeSheet->setCellValueByColumnAndRow(3,$nfila,'=SUM(D'.$inicio.':D'.$fin.')');
                        $activeSheet->getRowDimension($nfila++)->setRowHeight(18);
                        //agregar torta
                     //   $numero=$fin-$inicio;
                        $categories = array(
                        new PHPExcel_Chart_DataSeriesValues('String', 'Worksheet!$B$'.$inicio.':$B$'.$fin, null, 4)
                        );
                        $values = array(
                        new PHPExcel_Chart_DataSeriesValues('Number', 'Worksheet!$D$'.$inicio.':$D$'.$fin, null, 4)
                        );

          
                $series = new PHPExcel_Chart_DataSeries(
                        PHPExcel_Chart_DataSeries::TYPE_PIECHART,       // plotType
                        PHPExcel_Chart_DataSeries::GROUPING_STACKED,  // plotGrouping
                        array(0),                                    	// plotOrder
                        $values,                                        	// plotLabel
                        $categories,                                    // plotCategory
                        $values                                         // plotValues
                );
                    $topLeftPosition='H'.($inicio-4);
                    $bottomRightPosition='R'.($fin+4);
                    $activeSheet->getStyle('H'.($inicio-6))->getFont()->setBold(true);
                    $activeSheet->getRowDimension(($inicio-6))->setRowHeight(75);
                    $activeSheet->setCellValue('H'.($inicio-6),
                            $pregunta->getEnunciadoConSaltosDelinea(100)."\n".'Porcentaje de respuestas '.$fuente->nombre);
                    $activeSheet->getStyle($topLeftPosition.':'.$bottomRightPosition)->applyFromArray(
                        array(
                            'fill' => array(
                                'type' => PHPExcel_Style_Fill::FILL_SOLID,
                                'color' => array('rgb' => 'FFFFFF')
                            )
                        )
                    );
                        Excel::adicionarTorta($activeSheet, $categories, $values, $series, 
                                $topLeftPosition, $bottomRightPosition,'-');
                    } 
                $nfila = $nfila+9;    
                }
            }
       
            $activeSheet->getColumnDimension('B')->setWidth(25);
        $activeSheet->getColumnDimension('C')->setWidth(25);
     // Rename worksheet
     //$objPHPExcel->getActiveSheet()->setTitle('Simple');

     // Set active sheet index to the first sheet, so Excel opens this as the first sheet
    // $objPHPExcel->setActiveSheetIndex(0);


    header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    header('Content-Disposition: attachment;filename="MyExcelFile.xlsx"');
     // If you're serving to IE 9, then the following may be needed
     header('Cache-Control: max-age=1');

     // If you're serving to IE over SSL, then the following may be needed
     header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
     header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
     header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
     header ('Pragma: public'); // HTTP/1.0

     $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
     $objWriter->setIncludeCharts(TRUE);
     $objWriter->save('php://output');
     Yii::app()->end();
               
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