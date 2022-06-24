<?php

$nombreArchivo = "3.pdf";
                        
            header("Content-Transfer-Encoding: binary");
            header("Content-type: application/force-download");
            header("Content-Disposition: attachment; filename=$nuevoNombreArchivo");
            readfile("$NombreArchivo");

?>