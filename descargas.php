<?php
    include 'global/config.php';
    include 'global/conexion.php';
    include 'carrito.php';
?>
<?php
    //print_r($_POST);

    if($_POST){
        $IDVENTA = openssl_decrypt($_POST['IDVENTA'],COD,KEY);
        $IDPRODUCTO = openssl_decrypt($_POST['IDPRODUCTO'],COD,KEY);
           
        $sentencia=$pdo->prepare("SELECT * FROM tbldetalleventas
                                        WHERE IDVENTA = :IDVENTA
                                        AND IDPRODUCTO=:IDPRODUCTO
                                        AND DESCARGADO<".DESCARGASPERMITIDAS);
        $sentencia->bindParam(":IDVENTA",$IDVENTA);
        $sentencia->bindParam(":IDPRODUCTO",$IDPRODUCTO);
        $sentencia->execute();
        
        $listaProductos=$sentencia->fetchAll(PDO::FETCH_ASSOC);
        
        if($sentencia->rowCount()>0){
            echo "Archivo en descarga...<br>";
            
            $file = "archivos/".$listaProductos[0]['IDPRODUCTO'].".pdf";
            $filename = $_POST['IDVENTA'].$_POST['IDPRODUCTO'].".pdf";
            
            if (is_file($file)) {    
                header("Content-Transfer-Encoding: binary");
                header("Content-Type: application/force-download");
                header("Content-Disposition: attachment; filename=\"$filename\"");
                readfile($file);
            } else {
                die("Error: no se encontró el archivo: $file");
            }
            
            $sentencia=$pdo->prepare("UPDATE `tbldetalleventas` SET DESCARGADO=DESCARGADO+1
                                        WHERE IDVENTA = :IDVENTA AND IDPRODUCTO=:IDPRODUCTO");
            $sentencia->bindParam(":IDVENTA",$IDVENTA);
            $sentencia->bindParam(":IDPRODUCTO",$IDPRODUCTO);
            $sentencia->execute();
            
        }else{
            include 'templates/cabecera.php';
            echo "<br><br><br><h2>TUS DESCARGAS SE AGOTARON </h2>";
            include 'templates/pie.php'; 
        }
    }
    
?>
