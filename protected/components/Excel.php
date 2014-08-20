<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Excel
 *
 * @author root
 */
class Excel {
    /**
     * Permite agregar un gráfico de torta a una hoja de Excel.
     * @param type $sheet
     * @param type $categories
     * @param type $values
     * @param PHPExcel_Chart_DataSeries $series
     * @param type $topLeftPosition
     * @param type $bottomRightPosition
     */
    static function adicionarTorta($sheet, $categories,$values,$series,
            $topLeftPosition,$bottomRightPosition,$title)
    {
           Yii::import('ext.phpexcel.XPHPExcel'); 
           
	
        $layout1 = new PHPExcel_Chart_Layout();    // Create object of chart layout to set data label 
        $layout1->setShowVal(TRUE);                   
   
        $plotarea = new PHPExcel_Chart_PlotArea($layout1, array($series));
	$legend = new PHPExcel_Chart_Legend(PHPExcel_Chart_Legend::POSITION_RIGHT, $layout1, false);
        
        $title = new PHPExcel_Chart_Title($title);
	$chart = new PHPExcel_Chart(
		'chart1',                                       // name
		$title,                                         // title
		$legend,                                        // legend
		$plotarea,                                      // plotArea
		false,                                           // plotVisibleOnly
		'0',                                              // displayBlanksAs
		null,                                           // xAxisLabel
		null                                            // yAxisLabel
	);
	$chart->setTopLeftPosition($topLeftPosition);
	$chart->setBottomRightPosition($bottomRightPosition);
	$sheet->addChart($chart);
     

         
        
    }
}
