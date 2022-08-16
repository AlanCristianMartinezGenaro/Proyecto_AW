<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <link rel="icon" href="../img/logo.png">
  <title>Xochitl Store - Categoria </title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
   <script src="../scripts/scrollreveal.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
  <style media="screen">
    body{
      background-color: rgb(237, 237, 237);
    }
    .w3-container{
      margin: 30px;
      display: flex;
      flex-wrap: wrap;
      padding: 7px;
      align-items: center;
      justify-content:space-between;
    }
    .productosimg{
      height: 240px;
      width: 220px;
    }
    .card{
      height: 400px;
      width: 100px;
      margin: 5px;
      margin-bottom: 20px;
      box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
    }
    .navbar{
      background: #c21500;  /* fallback for old browsers */
      background: -webkit-linear-gradient(to right, #ffc500, #c21500);  /* Chrome 10-25, Safari 5.1-6 */
      background: linear-gradient(to right, #ffc500, #c21500); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
      font-size: 19px;
    }
  </style>
  <?php
   $conexion = mysqli_connect("localhost", "u492204955_root","root34_tienda_P", "u492204955_tienda_p");
  $query = "SELECT * FROM tb_categorias;";
  $results1 = mysqli_query($conexion, $query);
  $num = $results1->num_rows;
  ?>

  <!---                Inicio del Navbar              ----->
  <nav class="navbar navbar-expand-lg bg-light" style="height:70px">
    <div class="container-fluid" style="margin-left:30px">
      <a class="navbar-brand" href="./index.php">
          <img src="../img/logo.png" alt="" width="50" height="44">
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent" >
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="./index.php">Inicio</a>
          </li>

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Categorias
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <?php
                    foreach($results1 as $idp=>$row){
                      $categoria = $row['nombre_c'];
                        echo " <li><a class='dropdown-item' href='./categoria.php?id=$categoria'>$categoria</a></li>";
                    }
                ?>
                </ul>
            </li>



            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Conocenos
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class='dropdown-item' href='./conocenos.php'>Acerca de Nosotros</a></li>
                <li><a class='dropdown-item' href='./contactanos.php'>Contactanos</a></li>
                <li><a class='dropdown-item' href=''>Calificanos</a></li>
              </ul>
           </li>
          </ul>
        <form class="d-flex" role="search" style="margin-right:50px" action="./buscar.php">
          <input class="form-control me-2" type="search" name="buscar" placeholder="Buscar" aria-label="Search" style="width:350px">
          <button type="submit" class="btn btn-warning">Buscar</button>
        </form>
      </div>
    </div>
  </nav>
  <!---                Fin del Navbar              ----->

  <!---                Inicio Targetas de los productos              ----->
  <?php
    $cat = $_GET["id"];
    $query = "SELECT * FROM tb_productos INNER JOIN tb_categorias
    ON tb_productos.id_categoria = tb_categorias.id_categoria where nombre_c= '$cat' ;";
    $results1 = mysqli_query($conexion, $query);
    $num = $results1->num_rows;
    ?>
    <div class="w3-container">
        <?php
        foreach($results1 as $idp=>$row)
        {
          $nombre_p = $row['nombre_p'];
          $img = $row['imagen'];
          $precio = $row['precio'];
           ?>
           <div class="card" style="width: 18rem;">
             <img class="productosimg" src="<?php echo $img ?>" class="card-img-top" alt="...">
             <div class="card-body">
               <h5 class="card-title"><?php echo $nombre_p ?></h5>
               <p><?php echo "$".$precio ?></p>
               <a href="#" class="btn btn-primary">Comprar</a>
             </div>
           </div>
          <?php
        }
        ?>
    </div>

  <!---                Fin Targetas de los productos              ----->
    <script src="../scripts\reveal.js"></script>
  </body>
</html>
