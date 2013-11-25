
<?php
$i=0;
$caracteristica = CaracteristicaProceso::model()->with('preguntas.fuentes')->findByPk($idCaracteristica);
?>
<br>
<div><h3><?php echo $caracteristica->titulo; ?></h3></div>
<?php
            foreach ($caracteristica->preguntas as $pregunta)
            {
?>                
            <h4><?php echo ($i+1);?>. <?php echo $pregunta->enunciado; ?></h4>
<?php                
                foreach ($pregunta->fuentes as $fuente)
                {
?>                    
                
<?php                    
                    $datos=$pregunta->estadisticaPorRespuesta($fuente->id_fuente_proceso);
                    $total=0;
                    if(isset($jsArray))
                    {    
                    unset($jsArray);
                    }
                    foreach($datos as $fila)
                    {
                        $total = $total + $fila["conteo"];
                        $jsArray[] = array($fila["respuesta"],(int)$fila["conteo"]);
                        
                    } 
                  
?>                

<div style="display: inline-block; vertical-align: top; padding-top: 20px">
<table class="clase2" >
        <th class="clase2">Respuesta</th><th class="clase2"><?php echo $fuente->nombre; ?></th><th class="clase2">Porcentaje</th>
        <?php
        foreach($datos as $fila)
                    { ?>
         <tr>            
         <td><?php echo $fila["respuesta"]; ?></td><td><?php echo $fila["conteo"]; ?></td><td><?php echo number_format(100*$fila["conteo"]/$total,2); ?></td>
         </tr>
       <?php        }   
        ?>
    </table>
 </div>
 <div id="<?php echo "chart$i"; ?>" style="display: inline-block"></div>

 <script>graficar("<?php echo "chart$i"; ?>", <?php echo json_encode($jsArray); ?>);</script>
<?php
$i++;
    }
  }   

?>

 