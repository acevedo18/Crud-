<?php

$host="localhost";
$port=3306;
$socket="";
$user="root";
$password="12345678";
$dbname="crud";

$con = new mysqli($host, $user, $password, $dbname, $port, $socket)
	or die ('Could not connect to the database server' . mysqli_connect_error());

//$con->close();
$query = "SELECT id_producto,nombre,precio,clave_producto,prod_temporada,imagen_link,cantidad_producto,tipo_producto from productos";


if ($stmt = $con->prepare($query)) {
    $stmt->execute();
    $stmt->bind_result($id_producto, $nombre, $precio, $clave_producto, $prod_temporada, $imagen_link, $cantidad_producto, $tipo_producto);
    while ($stmt->fetch()) {
        //printf("%s, %s, %s, %s, %s, %s, %s, %s\n", $id_producto, $nombre, $precio, $clave_producto, $prod_temporada, $imagen_link, $cantidad_producto, $tipo_producto);
    }
    $stmt->close();
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>CRUD</title>
    <link rel="stylesheet" type="text/css"  href="estilos.css" />
    <link href="https://fonts.googleapis.com/css2?family=Fjalla+One&display=swap" rel="stylesheet">
</head>
<body>
    <h1 align="center"><font color="blue">ARTICULOS</font></h1>
    <table width="70%" border="2px" align="center" >

    <tr align="center" background=#87CEFA >
        <td><h4>Id</h4></td>
        <td><h4>Nombre</h4></td>
        <td><h4>Price</h4></td>
        <td><h4>Sku</h4></td>
        <td><h4>Is Seasonal</h4></td>
        <td><h4>Image</h4></td>
        <td><h4>Quantity</h4></td>
        <td><h4>Category</h4></td>
    </tr>
    <?php 
            
        $query = "SELECT id_producto,nombre,precio,clave_producto,prod_temporada,imagen_link,cantidad_producto,tipo_producto from productos";


if ($stmt = $con->prepare($query)) {
    $stmt->execute();
    $stmt->bind_result($id_producto, $nombre, $precio, $clave_producto, $prod_temporada, $imagen_link, $cantidad_producto, $tipo_producto);
        while ($stmt->fetch()) {
         echo "
            <tr>
                <td><center> $id_producto<center></td>
                <td><center> $nombre <center></td>
                <td><center> $precio<center></td>
                <td><center> $clave_producto<center></td>
                <td><center> $prod_temporada<center></td>
                <td><center><a><img
              src='$imagen_link'
              width='170'
              height='80'/>
          </a><center></td>
                <td><center> $cantidad_producto<center></td>
                <td><center> $tipo_producto<center></td>
            </tr>";
               
        }
        $stmt->close();
}
     ?>
    </table>

      <footer class="footer">
          <div class="container mt-3">
            <div align="center">    
         <font color="black"><br><p>&#169; 2021 Arturo Acevedo All rigts reserved</p></font>
          </div>
          </div>
      </footer>

</body>
</html>