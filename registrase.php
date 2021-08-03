
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Raleway|Ubuntu" rel="stylesheet">

    <!-- Estilos -->
    <link rel="stylesheet" href="css/estilos.css">

    <title> Registro de Usuarios</title>
</head>

 <!-- carusel imagenes -->
<body>
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="imagenes/exotic.jpg" alt="First slide">
    </div>
     <!-- caruselimagenes -->

   <!-- Formularios -->
    
        </ul>
            <!-- Registrarse -->
            <div id="registrarse">
                <h1>Registrarse</h1>
                <form action="usuariocreado.php" method="post">
                    <div class="fila-arriba">
                        <div class="contenedor-input">
                            <label>
                                Nombre <span class="req">*</span>
                            </label>
                            <input type="text" required name="txtnombre">
                        </div>

                        <div class="contenedor-input">
                            <label>
                                Apellido <span class="req">*</span>
                            </label>
                            <input type="text" required name = "txtapellido">
                        </div>
                    </div>
                    <div class="contenedor-input">
                        <label>
                            Usuario <span class="req">*</span>
                        </label>
                        <input type="text" required name = "txtusuario">
                    </div>
                    <div class="contenedor-input">
                            <label>
                             
                            </label>
                       
                    </div>
                    <div class="contenedor-input">
                        <label>
                            Contraseña <span class="req">*</span>
                        </label>
                        <input type="password" required name = "txtPassword">
                    </div>

                    <div class="contenedor-input">
                        <label>
                            Repetir Contraseña <span class="req">*</span>
                        </label>
                        <input type="password" required>
                    </div>
                    
          
          <button type="submit" class="glyphicon glyphicon-log-in">ingresar</button>
            </div>
        </div>
        
    </div>

   <script src="js/jquery.js"></script>
   <script src="js/main.js"></script>

</body>
</html>
