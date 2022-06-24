<?php
    include 'global/config.php';
    include 'global/conexion.php';
    include 'carrito.php';
    include 'templates/cabecera.php'
?>

<?php
if($_POST){
    $total = 0;
    $correo = $_POST['email'];
    $SID = session_id();
    
    foreach($_SESSION['CARRITO'] as $indice=>$producto) { 
        $total=$total+($producto['PRECIO']*$producto['CANTIDAD']);
    }
    
    $sentencia=$pdo->prepare("INSERT INTO `tblventas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES (NULL, :ClaveTransaccion, '', NOW(), :Correo, :Total, 'pendiente');");
    
    $sentencia->bindParam(":ClaveTransaccion",$SID);
    $sentencia->bindParam(":Correo",$correo);
    $sentencia->bindParam(":Total",$total);
    $sentencia->execute();
    $idVenta=$pdo->lastInsertId();
    
    foreach($_SESSION['CARRITO'] as $indice=>$producto) { 
    
        $sentencia=$pdo->prepare("INSERT INTO `tbldetalleventas` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES (NULL,:IDVENTA, :IDPRODUCTO, :PRECIOUNITARIO, :CANTIDAD, '0');");

        $sentencia->bindParam(":IDVENTA",$idVenta);
        $sentencia->bindParam(":IDPRODUCTO",$producto['ID']);
        $sentencia->bindParam(":PRECIOUNITARIO",$producto['PRECIO']);
        $sentencia->bindParam(":CANTIDAD",$producto['CANTIDAD']);
        $sentencia->execute();
            
    }
    
    //echo "<h3>".$total."<h3>";
}
?>

<script src="https://www.paypalobjects.com/api/checkout.js"></script>

<style>
    /* Media query for mobile viewport */
    @media screen and (max-width: 400px) {
        #paypal-button-container {
           width: 100%;
        }
    }
    /* Media query for desktop viewport */
    @media screen and (min-width: 400px) {
        #paypal-button-container {
           width: 250px;
            display: inline-block;
        }
    }
</style>



<div class="jumbotron text-center">
    <h1 class="display-4">¡PASO FINAL!</h1>
    <hr class="my-4">
    <p class="lead">Estas a punto de pagan con PayPal la cantidad de:
        <h4>C$ <?php echo number_format($total,2); ?></h4>
        <div id="paypal-button-container"></div>
    </p>
        <p>Los productos podrán ser descargados una vez que se procese el pago<br>
        (Para aclaraciones: <strong>masterjino72@gmail.com</strong>)
        </p>
</div>


<script>
    paypal.Button.render({
        env: 'sandbox', // sandbox | production
        style: {
            label: 'checkout',  // checkout | credit | pay | buynow | generic
            size:  'responsive', // small | medium | large | responsive
            shape: 'pill',   //     pill | rect
            color: 'gold'   // gold | blue | silver | black
        },
 
        // PayPal Client IDs - replace with your own
        // Create a PayPal app: https://developer.paypal.com/developer/applications/create
 
        client: {
            sandbox:    'AQH5Lwgb0YeMk1Jg08SdnkY69QsOq5kV9AlC5S8JWtRSfzPyP2unSJPfyFEFGz3RR7uvatnGCQGNzz8o',
            production: 'AeCWKL5NxnDu2u-Qje8HR_k74grSaNGGZWnoPQZ3vMODKJeYtRYGBlnI1YAqJcZz2j52X63Rh6VPMey7'
        },
 
        // Wait for the PayPal button to be clicked
 
        payment: function(data, actions) {
            return actions.payment.create({
                payment: {
                    transactions: [
                        {
                            amount: { total: '<?php echo $total?>', currency: 'USD' },
                            description:"Compra de Productos a Master Jino: $",
                            custom:"<?php echo $SID; ?>#<?php echo openssl_encrypt($idVenta,COD,KEY);?>"
                            
                        }
                    ]
                }
            });
        },
 
        // Wait for the payment to be authorized by the customer
 
        onAuthorize: function(data, actions) {
            return actions.payment.execute().then(function() {
                console.log(data);
                window.location="verificador.php?paymentToken="+data.paymentToken+"&paymentID="+data.paymentID;
            });
        }
   
    }, '#paypal-button-container');
 
</script>


<?php include 'templates/pie.php'; ?>