
<?php
$conexion = mysqli_connect("localhost", "u492204955_root","root34_tienda_P", "u492204955_tienda_p");

$num = $results1->num_rows;
$name = $_get['nombre'];
$app = $_get['app'];
$imagen = "imagen" ;
$email = $_get['email'];
$password = $_get['contraseña'];
$tipo_u = $_get['tipo'];

$query = "INSERT INTO tb_usuarios(nombre_u,correo,contraseña,estatus,id_tipo)
 VALUES('$name $app','$email','$password','1','$tipo_u');";
mysqli_query($conexion, $query);
}
 ?>
