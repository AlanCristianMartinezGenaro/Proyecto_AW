<?php
  $conexion = mysqli_connect("localhost", "u492204955_root","root34_tienda_P", "u492204955_tienda_p");
  if (!isset($_POST["elimp"]) && !isset($_POST["restar"]) && !isset($_POST["agregar"])) {
    header("location:./admin.php");
  }
  if (isset($_POST["elimp"])) {
    $producto = $_POST['id'];
    $sql = "DELETE FROM tb_productos WHERE id_producto = '$producto';";
    mysqli_query($conexion,$sql);
    header("location:./admin.php");
  }
  if (isset($_POST["restar"])) {
    $producto = $_POST['id'];
    $a = $_POST['cantidad'];
    $b = $_POST['num'];
    $newcb = $a-$b;
    $elim = "UPDATE tb_productos SET cantidad = '$newcb'  WHERE id_producto = '$producto';";
    mysqli_query($conexion, $elim);
    header("location:./admin.php");
  }
  if (isset($_POST["agregar"])) {
    $producto = $_POST['id'];
    $a = $_POST['cantidad'];
    $b = $_POST['num'];
    $newcb = $a+$b;
    $elim = "UPDATE tb_productos SET cantidad = '$newcb'  WHERE id_producto = '$producto';";
    mysqli_query($conexion, $elim);
    header("location:./admin.php");
  }
   ?>
