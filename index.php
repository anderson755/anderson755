<?php
if ($_SERVER["REQUEST_METHOD"] == "POST"): 
    require_once "configuracionDB.php"
  $myDB = new mysqli($servidor, $usuario, $contra, $baseDatos) or die("Error en la conexión de base de datos, contacte al administrador");
   
  $contraEncriptada = md5($_REQUEST['txtPassword']);
    $sql = "select * from usuarios
    where usuario = ? 
    and contrasena = ?";        
//evitar inyección SQL
$datos = $myDB->prepare($sql);
//https://www.php.net/manual/es/mysqli-stmt.bind-param.php
$datos->bind_param('ss',$_REQUEST['txtusuario'],$contraEncriptada);
//Ya no se ejecuta directamente la consulta
    //$datos = $myDB->query($sql) or die("Error en el sistema...");
$datos->execute();
$datos = $datos->get_result();
$fila =$datos->fetch_assoc();
        //acceder al archivo de sesion del servidor
  session_start():
  $_SESSION['usuario'] = $fila['nombre'] :          
  //redirreción - cargar otra página
        header('Location: /php/mostrarLista.php'):
    else
        $mensaje = "
        <div class='alert alert-danger' role='alert'>
    Datos incorrectos
  </div>
        ";
    endif:

        ?>