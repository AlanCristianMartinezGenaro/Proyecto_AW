<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <link rel="icon" href="../img/logo.png">
  <title>Xochitl Store</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
   <script src="../scripts/scrollreveal.js"></script>
   <link rel="stylesheet" href="../css/panel.css">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
  <body>
    <style media="screen">

      .all{
        margin: 0px;
        height: 100%;
        background-image: linear-gradient( 135deg, #F6D242 10%, #FF52E5 100%);
      }
      @font-face
      {
         font-family: "Kaushan";
         src: url("../Fuentes/KaushanScript-Regular.otf");
      }
      @font-face
      {
         font-family: "Boogaloo";
         src: url("../Fuentes/Boogaloo-Regular.otf");
      }
      .encabezados{
        font-family: Kaushan;
        font-size: 60px;
        text-align: center;
      }

      .navbar{
        width: 100%;
        float:none;
        position: absolute;
        opacity: 93%;
        background: #c21500;  /* fallback for old browsers */
        background: -webkit-linear-gradient(to right, #ffc500, #c21500);  /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to right, #ffc500, #c21500); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        font-size: 19px;
      }
      .p2{
        display: flex;
        flex-direction: column;
      }
      .tarjeta{
        margin: 50px;
        align-self: flex-start;
        width: 800px;
        height: 400px;
        box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
        border-color: rgb(255, 255, 255);
        background-color: rgb(255, 255, 255);
        border-radius: 20px;
      }
      .mi{
        margin-top: 25px;
        margin-bottom: 15px;
        font-family: Kaushan;
        font-size: 60px;
        text-align: center;
      }
      p{
        margin: 25px;
        font-family: Boogaloo;
        font-size: 35px;
        text-align: center;
      }
      ol{
        margin: 25px;
        font-family: Boogaloo;
        font-size: 27px;
      }
      #tg2{
        align-self: flex-end;
      }
      #tg1,#tg1{
        align-self: flex-start;
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

    <!---                Cuerpo de la Pagina              ----->
    <div class="all">
      <div class="p1">
        <br>
        <br>
        <br>
        <br>
        <h1 class="encabezados">Bienvenido a Miscelánea</h1>
        <br>
        <br>
        <center>
          <img style="
          margin-top:15px;
          width:300px;
          height:300px;
          animation: ease-in animat 1s;"
          src="../img/logo.png" alt="">
        </center>
        <br>
        <br>
        <h1 class="encabezados">¿Quienes somos?</h1><br>
        <br>
        <br>
      </div>
      <br>
      <br>
      <br>
      <div class="p2">
        <div class="tarjeta" style="animation: ease-in animat 1s;" id="tg1">
          <h2 class="mi">Misión</h2>
              <P>Somos una empresa encargada de brindar y ofrecer
              productos de excelente calidad a través de un buen servicio,
              el mejor precio y un trato amable por parte de quienes conformamos este negocio.</P>
        </div>
        <br>
        <br>
        <br>
        <br>
        <div class="tarjeta" style="animation: ease-in animat 1s;" id="tg2">
          <h2 class="mi">Visión</h2>
              <P>Buscamos ser la primera opción de nuestros clientes al momento de adquirir
               insumos para su negocio; permitiéndonos crear relaciones duraderas basadas
               en la confianza, el respeto y la honestidad que nos permita crecer conjuntamente todos los días.</P>
        </div>
        <br>
        <br>
        <br>
        <br>
        <div class="tarjeta" style="animation: ease-in animat 1s;" id="tg3">
          <h2 class="mi">Objetivos </h2>
             <div class="center">
               <ol>
                  <li>Ofrecer siempre a los clientes una compra que supere sus expectativas.</li>
                  <li>Tener siempre un buen surtido para mayor satisfacción del cliente.</li>
                  <li>Siempre un orden para mayor comodidad y acogida del cliente.</li>
                  <li>Ofrecer una atención de alta calidad.</li>
                  <br>
                  <br>
                </ol>
             </div>
        </div>
        <br>
        <br>
        <br>
        <br>
      </div>
      </div>

    <footer style="background-color:rgb(0, 0, 0)">
      <center>
        <br>
        <br>
        <h4>Aviso de privacidad | Politicas de calidad @Miscelánea XOCHITL</h4>
        <br>
        <br>
      </center>
    </footer>
    <script src="../scripts/reveal.js"></script>
  </body>
</html>
