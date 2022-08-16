<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="icon" href="../img/logo.png">
    <title>Administracion</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
  </head>
  <body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <style media="screen">
      body{
        background-color: rgb(237, 237, 237);
      }
      .display-5{
        margin-left: 20px;
      }
      .cont1{
        margin: 70px;
        margin-right: 90px;
        display: flex;
        flex-wrap: wrap;
      }
    </style>
    <style>
      body{
        background: #c21500;  /* fallback for old browsers */
        background: -webkit-linear-gradient(to right, #ffc500, #c21500);  /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to right, #ffc500, #c21500); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        }
            #content{
              margin-top: 20px;
              margin-left:50px;
              width: 550px;
            }
            .display-5,.display-6{
              margin-left:50px;
            }
            .mb-3,.form-check,.input-group{
              margin: 0px;
                margin-left:50px;
                width: 350px;
            }
            .form-check{
              margin-left: 150px;
            }
            .divgen{
              width: 200px;
            }
            .w3-contain{
              width: 600px;
              padding: 40px;
              display: flex;
              flex-direction: row;
              margin-left:70px;
              border-radius: 30px;
              margin-right:500px;
              justify-content: center;
              align-items: center;
              box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
              background:rgb(220, 220, 220);

            }
          </style>
    <?php
     $conexion = mysqli_connect("localhost", "u492204955_root","root34_tienda_P", "u492204955_tienda_p");
    $query = "SELECT * FROM tb_productos INNER JOIN tb_categorias on tb_productos.id_categoria = tb_categorias.id_categoria;";
    $results1 = mysqli_query($conexion, $query);
    $query1 = "SELECT * FROM tb_categorias;";
    $results2 = mysqli_query($conexion, $query1);

?>

    <!--    Inicio de Formulario de registro de producto         -->
    <hr>
    <h1 class="display-5">Agregar Producto Nuevo</h1>
    <hr>
    <div class="w3-contain">

      <form class="" action="admin.php" method="post">
                  <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Nombre</label>
                    <input type="text" name="nombre" class="form-control" value="" required>
                  </div>
                  <label style="margin-left:40px;" for="inputGroupSelect04" class="form-label">Categoria: <br></label>
                          <div class="input-group">
                          <select name="categoria" class="form-select" id="inputGroupSelect04">
                            <?php
                                foreach($results2 as $idp=>$row){
                                  $id_cat = $row['id_categoria'];
                                  $categoria = $row['nombre_c'];
                                  echo " <option value='$id_cat'> $categoria </option>";
                                }


                            ?>
                          </select>
                        </div>
                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Cantidad</label>
                        <input type="text" name="cantidad" class="form-control" value=" " required>
                      </div>
                      <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Precio</label>
                        <input type="text" name="precio" class="form-control" value=" " required>
                      </div>
                      <div>
                      <div class="mb-3">
                        <label  class="form-label">Imagen</label>
                        <input type="text" name="imagen" class="form-control" value="" required>
                      </div>
                        <button name="boton" type="submit" class="btn btn-success">Success</button>
                      </div>

      </form>
    </div>
    <?php

      if (isset($_POST['boton'])) {
        $nombre=$_POST["nombre"];
        $categ=$_POST["categoria"];
        $cantidad=$_POST["cantidad"];
        $precio=$_POST["precio"];
        $imagen=$_POST["imagen"];
        $sql = "INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria)
          VALUES('$nombre','$precio','$cantidad','$imagen','$categ');";
        mysqli_query($conexion, $sql);
      }
    ?>
     <!--    Fin de Formulario de registro de producto         -->
     <hr>
    <h1 class="display-5">Inventario</h1>
    <hr>


    <!--    Inicio de Tabla de inventario         -->
      <div class="cont1">
        <div class="accordion" id="accordionPanelsStayOpenExample" style="width:1300px;">
          <div class="accordion-item">
            <h2 class="accordion-header" id="panelsStayOpen-headingOne">
              <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                Ver Inventario
              </button>
            </h2>
            <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingOne">
              <div class="accordion-body">
                <table id="all" class="table table-striped">
                  <tr>
                    <th>ID</th><th>Nombre</th><th>Categoria</th><th>Cantidad</th><th>Precio</th><th>Total</th>
                  </tr>
                  <?php
                  $auxp= array();
                  $i=0;
                  $num = $results1->num_rows;
                  foreach($results1 as $idp=>$row)
                  {
                    $id = $row['id_producto'];
                    $nombre=$row['nombre_p'];
                    $cantidad = $row['cantidad'];
                    $precio = $row['precio'];
                    $total = $precio * $cantidad;
                    $categoria = $row['nombre_c'];
                    if ($cantidad <=0) {
                      $sql = "DELETE FROM tb_productos WHERE id_producto = '$id';";
                      mysqli_query($conexion,$sql);
                      $url='./admin.php';
                      echo '<meta http-equiv=refresh content="1; '.$url.'">';
                      die;
                    }

                    echo "
                    <form action='procesos.php' method='post'>
                      <tr>
                        <input name='id' type='hidden' value='$id'>
                        <input name='cantidad' type='hidden' value='$cantidad'>
                        <td>$id</td><td style='width:290px'>$nombre</td><td>$categoria</td><td>$cantidad</td><td>$precio</td><td>$total</td>
                        <td style='margin-left:2px;'>
                          <input name='num' class='mb-3' type='text' placeholder='  ' style='width:52px;'>
                        </td>
                        <td style='margin-right:2px;'> "; ?>
                            <button name="agregar" type='submit' class='btn btn-primary'>Agregar</button>
                            <button name="restar"  type="submit" class='btn btn-danger'>Borrar</button>
                        </td>
                        <td>
                          <button name="elimp" type="submit" class="btn btn-outline-danger">Eliminar Producto</button>
                        </td>
                      </form>
                           <?php echo "
                    </tr>";
                  }
                      ?>



                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    <!--    Fin de Tabla de inventario         -->
    <hr>


  </body>
</html>
