<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
   include("../php/conexion.php");
   ?>
   <h2 class="titulo-principal">Subastas activas</h2>
   <div class="container-productos">
    <?php
    $sql = "SELECT producto_id, nombre, precio_inicial FROM productos";
    $result = $conex->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo '<div class="producto">';
            //echo '    <img src="' . htmlspecialchars($row['imagen_url']) . '" alt="' . htmlspecialchars($row['titulo']) . '" width="100px" height="100px">';
            echo '    <p class="titulo-producto">' . htmlspecialchars($row['nombre']) . '</p>';
            echo '    <p class="precio-actual">Precio actual: $' . number_format($row['precio_inicial'], 2) . '</p>';
            echo '    <a href="detalles_subasta.php?id=' . $row['producto_id'] . '" class="btn-ver-detalles">Ver detalles</a>';
            echo '</div>';
        }
    } else {
        echo '<p class="sin-subastas">No hay subastas activas en este momento.</p>';
    }

    $conex->close();
    ?>
    
  </div>

</body>
</html>