<?php
if(isset($_POST["txtnombre"])):
  $conexion= new mysqli("localhost","root","","zoologico") or die ("error");
$datos = $conexion->prepare("insert into usuarios (nombre,apellido,usuario,contrasena) values(?,?,?,?);");
$password = md5($_POST['txtPassword']);
$datos->bind_param('ssss'  ,        
                       $_POST["txtnombre"],
                       $_POST["txtapellido"],
                       $_POST["txtusuario"],
                       $password);

                       $datos->execute() or die("<div class='alert alert-danger' role='alert'>
                       header('Location: login.php');
                       Error interno del sistema</div>");
                       echo "
                           <div class='alert alert-success' role='alert'>
                               Registro exitoso
                           </div>";
                   endif;
                   require_once "iniciar.php";
               ?>