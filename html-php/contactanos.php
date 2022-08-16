<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <link rel="icon" href="../img/logo.png">
  <title>Xochitl Store</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
   <script src="../scripts/scrollreveal.js"></script>
   <script src="https://unpkg.com/scrollreveal@4"></script>

   <link rel="stylesheet" href="../css/panel.css">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
  <body>
    <style media="screen">
    .team{
      display: flex;
      flex-direction: row;
      justify-content: center;
      align-items: center;
    }
    .mate{
      height: 210px;
      width:210px;
      border-radius: 1700px;
      border-color: rgb(142, 142, 142);
      border-style: solid;
      border-width: 6px;
      box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
    }
    .contain{
      display: flex;
      align-items: center;
      justify-content: center;
      flex-direction: column;
    }
      .all{
        margin: 0px;
        height: 100%;
        background-image: linear-gradient( 135deg, #F6D242 10%, #FF52E5 100%);
      }
      @font-face
      {
         font-family: "Kaushan";
         src: url("../Fuentes/Action_Man_Bold.ttf");
      }

      @font-face
      {
         font-family: "Boogaloo";
         src: url("../Fuentes/Boogaloo-Regular.otf");
      }
      .encabezados{
        font-style: italic;
        font-family: Kaushan;
        font-size: 40px;
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
        align-self: center;
        display: flex;
        padding: 50px;
        margin: 50px;
        width: 1270px;
        height: 600px;
        box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
        border-color: rgb(255, 255, 255);
        background-color: rgb(255, 255, 255);
        border-radius: 20px;
        justify-content: space-between;

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

      .mapa{
        align-self: center;
      }
      .mapa_img{
        border-radius: 10px;
        width: 800px;
        height: 500px;
        box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
      }
      .sn{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
      }
      .btns{
        margin: 10px;
        width: 150px;
        border: none;
        background-color: rgba(255, 255, 255, 0);
      }
      .btnsd{
        margin: 4px;
        width: 45px;
        border: none;
        background-color: rgba(255, 255, 255, 0);
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
        <h1 class="encabezados">Puedes contactarnos a traves de nuestras <br> redes sociales: </h1><br>
        <div class="sn">
          <button class="btns" type="button" name="button"><img class="btns" src="..\img\Twitter.png"></button>
          <button class="btns" type="button" name="button"><img class="btns" src="..\img\face.png"></button>
          <button class="btns" type="button" name="button"><img class="btns" src="..\img\WhatsApp.png"></button>
          <button class="btns" type="button" name="button"><img class="btns" src="..\img\Instagram.png"></button>
        </div>
        <br>
        <br>
      </div>
      <br>
      <br>
      <br>
      <div class="p2">
        <div class="mapa">
          <h1 class="encabezados">Tambien puedes visitarnos en<br> nuestra tienda fisica: </h1><br>
          <iframe class="mapa_img"
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3763.9472444743697!2d-99.4491552858264!3d19.37143684765493!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85d2097868e1d9e7%3A0xcd0081a96c30a25d!2sC.%20Jos%C3%A9%20Vasconcelos%2C%20La%20Joya%2C%2052054%20San%20Francisco%20Xochicuautla%2C%20M%C3%A9x.!5e0!3m2!1ses!2smx!4v1657305242191!5m2!1ses!2smx"
            width="100%" height="800px" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <br>
        <br>
        <!-------------Inicio Tarjeta--------------------------->
        <div class="tarjeta">
          <div class="team">
              <div class="contain">
                <img class="mate" src="../img/me1.jpeg"  alt="">
                <br>
                <h5 class="encabezados" style="font-size:25px;">Alan Cristian <br> Martinez Genaro </h5>
                <h6 class="encabezados" style="font-size:22px; color:rgb(101, 101, 101);">Developer</h6>
                  <div class="sn">
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\Twitter.png"></button>
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\face.png"></button>
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\WhatsApp.png"></button>
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\Instagram.png"></button>
                  </div>
              </div>
          </div>
          <div class="team" >
              <div class="contain">
                <img class="mate" src="../img/me1.jpeg"  alt="">
                <br>
                <h5 class="encabezados" style="font-size:25px;">Alan Cristian <br> Martinez Genaro </h5>
                <h6 class="encabezados" style="font-size:22px; color:rgb(101, 101, 101);">Developer</h6>
                  <div class="sn">
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\Twitter.png"></button>
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\face.png"></button>
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\WhatsApp.png"></button>
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\Instagram.png"></button>
                  </div>
              </div>
          </div>
          <div class="team">
              <div class="contain">
                <img class="mate" src="../img/me1.jpeg"  alt="">
                <br>
                <h5 class="encabezados" style="font-size:25px;">Alan Cristian <br> Martinez Genaro </h5>
                <h6 class="encabezados" style="font-size:22px; color:rgb(101, 101, 101);">Developer</h6>
                  <div class="sn">
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\Twitter.png"></button>
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\face.png"></button>
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\WhatsApp.png"></button>
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\Instagram.png"></button>
                  </div>
              </div>
          </div>
          <div class="team">
              <div class="contain">
                <img class="mate" src="../img/me1.jpeg"  alt="">
                <br>
                <h5 class="encabezados" style="font-size:25px;">Alan Cristian <br> Martinez Genaro </h5>
                <h6 class="encabezados" style="font-size:22px; color:rgb(101, 101, 101);">Developer</h6>
                  <div class="sn">
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\Twitter.png"></button>
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\face.png"></button>
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\WhatsApp.png"></button>
                    <button class="btnsd" type="button" name="button"><img class="btnsd" src="..\img\Instagram.png"></button>
                  </div>
              </div>
          </div>
        </div>
        <br>
        <br>
      </div>
    </div>
    <script >
      ScrollReveal().reveal(".tarjeta",{
        origin:"top",
        duration: 2000
      });
    </script>
    <footer style="background-color:rgb(0, 0, 0)">
      <center>
        <br>
        <br>
        <h4>Aviso de privacidad | Politicas de calidad @Miscelánea XOCHITL</h4>
        <br>
        <br>
      </center>
    </footer>
    </body>
</html>
