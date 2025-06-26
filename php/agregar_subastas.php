<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2 class="titulo-principal">Crear una nueva subasta</h2>
    <p>Completa el formulario para publicar un artículo.</p>
 <form action="procesar_subasta.php" method="POST" enctype="multipart/form-data">
    <div class="form-group"><label for="titulo">Título:</label><input type="text" id="titulo" name="titulo" required></div>
    <div class="form-group"><label for="descripcion">Descripción:</label><textarea id="descripcion" name="descripcion" rows="6" required></textarea></div>
    <div class="form-group"><label for="precio_inicial">Precio de Inicio ($):</label><input type="number" id="precio_inicial" name="precio_inicial" step="0.01" min="0" required></div>
    <div class="form-group"><label for="imagen">Imagen:</label><input type="file" id="imagen" name="imagen" accept="image/*" required></div>
    <div class="form-group"><label for="fecha_cierre">Fecha de Cierre:</label><input type="datetime-local" id="fecha_cierre" name="fecha_cierre" required></div>
    <button type="submit" name="submit">Crear Subasta</button>
 </form>
</body>
</html>