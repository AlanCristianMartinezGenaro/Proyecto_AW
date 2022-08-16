<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <link rel="icon" href="./img/logo.png">
  <meta charset="UTF-8">
  <title>Login</title>
  <link rel="stylesheet" href="./css/mestilos.css">
  <link rel="stylesheet" href="./css/panel.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <body class="gradient">
      <style media="screen">
      @font-face
      {
         font-family: "Action_Man_Bold";
         src: url("../Fuentes/Action_Man_Bold.ttf");
      }

      @font-face
      {
         font-family: "Boogaloo";
         src: url("../Fuentes/Boogaloo-Regular.otf");
      }
        .panel2{
          border-radius: 10px;
          margin-top: 40px;
          background-color: rgb(255, 255, 255);
          height: 500px;
          width: 1000px;
          padding: 0px;
          display: flex;
          flex-direction: row;
          box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;

        }
        .m1{
          width: 710px;
        }
        .m2{
          background-color: #f30000;
          opacity: 0.8;
          background-image:  linear-gradient(30deg, #f97700 12%, transparent 12.5%, transparent 87%, #f97700 87.5%, #f97700), linear-gradient(150deg, #f97700 12%, transparent 12.5%, transparent 87%, #f97700 87.5%, #f97700), linear-gradient(30deg, #f97700 12%, transparent 12.5%, transparent 87%, #f97700 87.5%, #f97700), linear-gradient(150deg, #f97700 12%, transparent 12.5%, transparent 87%, #f97700 87.5%, #f97700), linear-gradient(60deg, #f9770077 25%, transparent 25.5%, transparent 75%, #f9770077 75%, #f9770077), linear-gradient(60deg, #f9770077 25%, transparent 25.5%, transparent 75%, #f9770077 75%, #f9770077);
          background-size: 32px 56px;
          background-position: 0 0, 0 0, 16px 28px, 16px 28px, 0 0, 16px 28px;
          width: 290px;
          -webkit-border-top-right-radius: 10px;
          -webkit-border-bottom-right-radius: 10px;
          -moz-border-radius-topright: 10px;
          -moz-border-radius-bottomright: 10px;
          border-top-right-radius: 10px;
          border-bottom-right-radius: 10px;
        }
        .et{
          margin-bottom: 20px;
          padding-left: 30px;
          margin-top: 30px;
          width: 950px;
          align-self: flex-start;
          font-family: Boogaloo;
          box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 0px 0px -8px;
        }
        .cues{
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
        }
        .inp,.bt{
          display: flex;
          flex-wrap: wrap;
          align-content: center;
          justify-content: center;
        }
        .btn{
          display: flex;
          align-self: flex-end;
        }
        .title{
          margin-top: 30px;
          font-family: Boogaloo;
        }
        h1{
          font-size: 50px;
        }
      </style>
      <?php
          $conexion = mysqli_connect("localhost", "u492204955_root","root34_tienda_P", "u492204955_tienda_p");
          $query = "SELECT * FROM tb_tipo_u;";
          $results1 = mysqli_query($conexion, $query);
          $num = $results1->num_rows;
       ?>
<!--- Incio formulario ---->
      <div class="container">
        <div class="panel2">
          <!--Contenido del panel--->
          <div class="m1">
            <form class="cues" action="registro_u.php" method="get">
              <!--Elemento 1 Texto del titulo---->
              <div class="title">
                <h1>Registrate</h1>
              </div>
              <br>
              <!--Fin Elemento 1 Texto del titulo---->
              <!--Elemento 2 Inputs del formulario---->
              <div class="inp">
              <div class="group">
                <input name="nombre" type="text" required>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Nombre (s)</label>
              </div>
                <div class="group">
                  <input name="app" type="text" required>
                  <span class="highlight"></span>
                  <span class="bar"></span>
                  <label>Apellido (s)</label>
                </div>
                <div class="group">
                  <input name="email" type="email" required>
                  <span class="highlight"></span>
                  <span class="bar"></span>
                  <label>Correo</label>
                </div>
                <div class="group">
                  <input name="contraseña" type="password" required>
                  <span class="highlight"></span>
                  <span class="bar"></span>
                  <label>Contraseña</label>
                </div>
                <div class="group" style="
                margin-left:40px;
                width:240px;">
                  <select class="form-select" aria-label="Default select example" name="tipo">
                  <option selected>Seleccione su tipo de usuario</option>
                  <option value="1">Administrador</option>
                  <option value="2">Cliente</option>
                  </select>
                </div>
              </div>
              <!--Fin Inputs del formulario---->
              <br>
              <!--Elemnto 3 "Boton"---->
              <div class="bt">
                  <input type="submit"  class="btn btn-primary gradient" name="btn"></input>
              </div>
              <!--Fin Elemnto 3 "Boton"---->
            </form>
            <?php
            if (isset($_GET["btn"])) {
            $name = $_get['nombre']
            $email = $_get['email'];
            $password = $_get['contraseña'];
            $tipo_u = $_get['tipo'];

            $query = "INSERT INTO tb_usuarios(nombre_u,correo,contraseña,estatus,id_tipo)
             VALUES('$name $app','$email','$password','1','$tipo_u');";

            mysqli_query($conexion, $query);
            }
             ?>
          </div>
          <div class="m2">
          </div>
          <!---Fin del contenido del panel---->
        </div>
      </div>
>
        <script src="./scripts/reveal.js"></script>
    </body>
</html>
