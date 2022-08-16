<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <link rel="icon" href="./img/logo.png">

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login</title>
  <link rel="stylesheet" href="./css/mestilos.css">
  <link rel="stylesheet" href="./css/panel.css">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
   <script src="./scripts/scrollreveal.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
    <body class="gradient">
      <?php
          $conexion = mysqli_connect("localhost", "u492204955_root","root34_tienda_P", "u492204955_tienda_p");
          $query = "SELECT * FROM tb_tipo_u;";
          $results1 = mysqli_query($conexion, $query);
          $num = $results1->num_rows;
       ?>

        <div class="container">
          <div class="panel">
            <img style="
              margin-top:15px;
              width:190px;
              height:180px;
              animation: ease-in animat 1s;"
            src="./img/logo.png" alt="">
            <br>
            <br>
            <form class="formu" method="post" action="index.php">
              <select class="form-select" aria-label="Default select example" name="tipo">
                <option selected>Seleccione su tipo de Usuario</option>
                <?php
                  foreach($results1 as $idp=>$row){

                    $id = $row['id'];
                    $tipo = $row['tipo'];
                    echo " <option value='$id'> $id - $tipo </option> ";
                  }
                ?>

              </select>
              <br>
              <div class="group">
                <input name="email" type="text" required>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Usuario</label>
              </div>
              <br>
              <div class="group">
                <input name="password" type="password" required>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label>Contraseña</label>
              </div>

              <button type="submit" id="hovb" class="btn btn-primary gradient" name="btn">Entrar</button>

            </form>

            <?php
                $email="";
                $password="";
              if (isset($_POST['btn']))
              {
                $aux = $_POST['tipo'];
                $email = $_POST['email'];
                $password = $_POST['password'];
                $con = "(correo = '$email' AND contraseña='$password')";
                $query = "SELECT * FROM tb_usuarios WHERE $con AND  id_tipo = $aux ;";
                $results2 = mysqli_query($conexion, $query);
                $num = $results2->num_rows;
                foreach($results2 as $idp=>$row){
                  $tipo = $row['id_tipo'];
                }

                if($num>0 && $tipo ==1)
                {
                  header("location:./html-php/admin.php");
                }else
                  {
                    if ($num>0 && $tipo ==2)
                    {
                      header("location:./html-php/index.php");
                    }else
                    {
                      echo "No existe el usuario";
                    }
                  }
              }

             ?>
             <a href="./registro_u.php">Registrate</a>

          </div>
        </div>








        <script src="./scripts/reveal.js"></script>
    </body>
</html>
