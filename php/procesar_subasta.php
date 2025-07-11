<?php
include("../php/conexion.php");
session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: ../php/iniciar_sesion.php");
}


if (!empty($_POST['crear-subata'])) {
    if (
        strlen($_POST['nombre'])>=1 &&
        strlen($_POST['descripcion'])>=1 
        ) {

            $nombrep= trim($_POST['nombre']);
            $descripcion= trim($_POST['descripcion']);
            $precio_inicial= trim($_POST['precio_inicial']);
            $precio_actual=
            $fecha_fin=
            $usuario_id=
            $fecha_inicio=date("Y-m-d H:i:s");
            $estado="activa";

            $sqlr="INSERT INTO `usuarios` (`usuario_id`, `nombre`, `email`, `password`, `telefono`, `tipo_usuario`, `fecha_registro`) 
               VALUES (NULL, ?, ?, ?, ?, ?, ?)";
            $stmt= mysqli_prepare($conex, $sqlr);
            
            mysqli_stmt_bind_param($stmt,"ssssss", $nombre, $email, $password_encriptada, $telefono, $tipo_usuario, $fecha_registro);
            if (mysqli_execute($stmt)) {
                echo "<script>alert('felicidades, has sido registrado con éxito! Ahora inicia sesion.'); 
                window.location='../php/iniciar_sesion.php';</script>";
                mysqli_stmt_close($stmt);
                mysqli_close($conex);
                exit(); 
            }else {
                echo "<script>alert('error al registrarse'); window.location='../php/registrarse.php';</script>";
            } 
    }
    
}





?>