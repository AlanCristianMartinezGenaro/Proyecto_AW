DROP DATABASE IF EXISTS tienda_p; 
CREATE DATABASE tienda_p;

USE tienda_p;

CREATE TABLE tb_tipo_u(
id INT(3) AUTO_INCREMENT PRIMARY KEY NOT NULL,
tipo VARCHAR(100) NOT NULL
);
INSERT INTO tb_tipo_u(tipo) VALUES("Administrador");
INSERT INTO tb_tipo_u(tipo) VALUES("Usuario");

CREATE TABLE tb_usuarios(
id_u INT(3) AUTO_INCREMENT PRIMARY KEY NOT NULL,
nombre_u VARCHAR(200) NOT NULL,
imagen VARCHAR(5000) NOT NULL,
correo VARCHAR(60) NOT NULL,
contraseña VARCHAR(10) NOT NULL,
estatus INT(2) NOT NULL,
id_tipo INT(3) NOT NULL,
FOREIGN KEY(id_tipo) REFERENCES tb_tipo_u(id) ON DELETE CASCADE ON UPDATE CASCADE 
);
INSERT INTO tb_usuarios(nombre_u,imagen,correo,contraseña,estatus,id_tipo) VALUES("Alan","Sin imagen","alan@xochitlstore.com","1234",1,1);
INSERT INTO tb_usuarios(nombre_u,imagen,correo,contraseña,estatus,id_tipo) VALUES("Cristian","Sin imagen","al222110826@gmail.com","1234",1,2);


CREATE TABLE tb_categorias(
id_categoria INT(3) AUTO_INCREMENT PRIMARY KEY NOT NULL,
nombre_c VARCHAR(100) NOT NULL
);

CREATE TABLE tb_productos(
id_producto INT(3) AUTO_INCREMENT PRIMARY KEY NOT NULL,
nombre_p VARCHAR(200) NOT NULL,
precio FLOAT(10) NOT NULL, 
cantidad INT(10) NOT NULL,
imagen VARCHAR(5000) NOT NULL,
id_categoria INT(3) NOT NULL,
FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id_categoria) ON DELETE CASCADE ON UPDATE CASCADE 
);

INSERT INTO tb_categorias(nombre_c) VALUES("Cuidado del Hogar");
INSERT INTO tb_categorias(nombre_c) VALUES("Cuidado Personal");
INSERT INTO tb_categorias(nombre_c) VALUES("Despensa");
INSERT INTO tb_categorias(nombre_c) VALUES("Bebidas");
INSERT INTO tb_categorias(nombre_c) VALUES("Dulces");
INSERT INTO tb_categorias(nombre_c) VALUES("Farmacia");



INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Fabuloso",29,1,
"https://cdn.shopify.com/s/files/1/0566/4391/1854/products/7501035905344_711d2364-8bb7-4bca-9917-dc8affad7217_300x300.png?v=1626657416",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Maestro Limpio",26,1,
"https://onixsuper.com/wp-content/uploads/2020/10/7500435105361.png",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Pinol",32,1,
"https://s.cornershopapp.com/product-images/2589794.png?versionId=NxvAmJRGIV.PH0co26EPka6Q_bZ3GnFM",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jumex Durazno",22,1,
"https://cdn.shopify.com/s/files/1/0566/4391/1854/products/7501013104059_250422_b6aea6bd-1040-4324-88e0-a4edc02defc3_300x300.png?v=1651002769",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jumex Manzana",22,1,
"https://www.chedraui.com.mx/medias/75010928-00-CH515Wx515H?context=bWFzdGVyfHJvb3R8MjQwOTJ8aW1hZ2UvanBlZ3xoNDYvaDJjLzExMjgxMTk1Nzk0NDYyLmpwZ3wxNWUyMmNlY2Y5NWFiN2VhNDBiOTg2NDNiZjM5YjBkNzBiNzQ3ZGQwMDRkNjRlOTI3MWNmYTcxMTMyZjRjY2Yy",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Chetoos",12,2,
"https://modeloramanow.vtexassets.com/arquivos/ids/155518/104.png?v=637371223439300000",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Rufles",20,1,
"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750047800798L.jpg",5);



/*RAMIRO CUIDADOS DEL HOGAR*/
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Suavizante Suavitel 850 ml",33,3,
"https://www.chedraui.com.mx/medias/7509546016306-00-CH515Wx515H?context=bWFzdGVyfHJvb3R8Mzc2NjJ8aW1hZ2UvanBlZ3xoMWYvaGI1LzEyNDAxMzYzMzUzNjMwLmpwZ3wwNzljMDI1YmEzMmFhMjc3ZTY0NzJlNmU0M2UxMDUwYmIyYmQwZTVlYzllMDg0NDA0M2Y0ZGNjOTI5OWExOGFm",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Aceite Lustramuebles 240 ml",18,8,
"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750105875310L.jpg",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Axion lava trastes 1200 ml",45,32,
"https://www.smartnfinal.com.mx/wp-content/uploads/2017/09/2500-Lavatrastes-Axion-Variedad.jpg",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Fabuloso 1L",21,15,
"https://www.laranitadelapaz.com.mx/images/thumbs/0005646_limpiador-fabuloso-mar-fresco-azul-1l_510.jpeg",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Roma 1K",38,5,
"https://vimor.store/img/p/3/7/9/379-thickbox_default.jpg",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Petalo Maxi 32 rollo",156,8,
"https://www.chedraui.com.mx/medias/7506425638857-00-CH300Wx300H?context=bWFzdGVyfHJvb3R8MTUxOTV8aW1hZ2UvanBlZ3xoZDAvaDVmLzEyMzEwNzE4OTA2Mzk4LmpwZ3w5ZjNlOGU4YzdhYTdhNjJkODRjMWZiYmUwNzU3MTI2Yjg5NjczZjAzZWY5NGVlYjdkNDc1YmIwYmFjMTAxZWZl",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Vanish en gel 925 Ml",59,8,
"https://www.chedraui.com.mx/medias/7501058716453-00-CH515Wx515H?context=bWFzdGVyfHJvb3R8MjQ2MjB8aW1hZ2UvanBlZ3xoZjkvaDk5LzEwNDUyNDkzODI4MTI2LmpwZ3wwMDQ1NjNlMDgyZDA4ZWFjZDNkMmQxMjkzYzc1OTBlODE1ZDQzMDY4YjdjMmY3MDYyOGRmN2YzYjg1MmI5Yjky",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Mr Musculo Desengrasante para Cocina, Atomizador 650 ml",48,9,
"https://walmartni.vtexassets.com/arquivos/ids/158871/Limp-Mr-Musculo-Cocina-Limon-Trig-650Ml-1-10573.jpg?v=637678798469700000x	",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Poett Bebe 3.8 Lt",137,3,
"https://images.rappi.pe/products/4675bfac-a222-40bc-bfe2-18ce28b8bbec.jpg",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Ajax Limpiador Líquido Multiusos 2 L",53,10,
"https://www.chedraui.com.mx/medias/7501035905047-00-CH1200Wx1200H?context=bWFzdGVyfHJvb3R8NTg4NzV8aW1hZ2UvanBlZ3xoYjcvaGI3LzEyMzExNjI5NDYzNTgyLmpwZ3w1Zjg5NjI5OGUwZjFhNzZkZWIzNDc5MjZkY2E5ODI3M2Q5ZGVkYTZiZjQ3ZTY5NGFhYzk0YTk5NWYwZGM1NWIz",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Detergente en polvo 1 2 3 maxi poder 900 g",18,12,
"https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1218727_S_1280_F.jpg",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("GUANTES VILEDA EXTRA SENSATION CHICO",30,2,
"https://th.bing.com/th/id/OIP.IkBduEqEHOmXcOJgtOmGMwHaHa?pid=ImgDet&rs=1",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("GUANTES VITEX MULTIRESISTENTE #9",30,7,
"https://th.bing.com/th/id/OIP.xSDQ-q0lojUgViVtJVJdzgHaHa?pid=ImgDet&rs=1",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("GUANTES ADEX ROJO SUAVEX # 9",18,5,
"https://th.bing.com/th/id/R.6c75151e65d0e5e059aa7bb047011679?rik=BM%2b1eLM7kH%2fRAg&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("GUANTES VITEX MULTIUSOS AFELPADO # 9",24,32,
"https://surtitienda.vteximg.com.br/arquivos/ids/177480-500-500/07501019101571.1.jpg?v=637062399392870000",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("DETERGENTE TOTAL LIQUIDO ROPA COLOR 1 LT",40,4,
"https://surtitienda.vteximg.com.br/arquivos/ids/185033-500-500/07501021166223.1.jpg?v=637124868179800000",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("DETERGENTE TOTAL LIQUIDO 1 L BEBE",45,4,
"https://surtitienda.vteximg.com.br/arquivos/ids/185037-500-500/07501021166247.1.jpg?v=637124868234570000",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("LAVATRASTES LIQ EFICAZ MANZANA 750M",29,5,
"https://media.justo.mx/__sized__/products/7501025423827-thumbnail-510x510-70.jpg",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("DESMANCHADOR IBERIA MANC ACTALES 150M",63,8,
"https://surtitienda.vteximg.com.br/arquivos/ids/182757-500-500/08411660210036.7.jpg?v=637062502365030000",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("DESMACHADOR IBERIA MANCHAS RESISTES 150M",63,6,
"https://surtitienda.vteximg.com.br/arquivos/ids/186911-500-500/08411660210029.8.jpg?v=637128267877330000",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("LIMPIADOR PINOL TRAPEAD/DIARIO LAVAN 828M",22,4,
"https://th.bing.com/th/id/OIP.NYY2DrflbB-UuNpc3IjSrAHaHn?pid=ImgDet&rs=1",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("LIMPIADOR PINOL TRAPEA/DIARIO FLORA 828M",22,4,
"https://th.bing.com/th/id/R.1f6d5e48acc2c2ace02e1a5c0a2dd9c4?rik=UhFjXm%2fG1t8SpQ&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("SUAVIZANTE SEL DE LA CASA 1 L",17,6,
"https://th.bing.com/th/id/R.f40cbf76780b484fe79322e2994b9df7?rik=3NkYDQtddB1aMQ&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("DETERGENTE POLVO PERSIL REGULAR 900GRS",40,7,
"https://th.bing.com/th/id/R.0b3ec0abb913c579b32e4950845676cd?rik=J93UOLcxB7inIg&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("LIMPIADOR PATO DISC ACTI LIMA ",33,5,
"https://th.bing.com/th/id/R.8b2847ec123bf0a51f6b1d08b5b97ea0?rik=xGF0%2bxsoE5QexQ&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("LIMPIADOR POETT PRIMAVERA 900ML",15,7,
"https://th.bing.com/th/id/R.0405a164874ff7f57e8ccf53023079a3?rik=6HeqaYABEsbvEA&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("LIMPIADOR POETT 900ML LAVANDA",15,6,
"https://th.bing.com/th/id/OIP.SZ2DTTmCiuhv-6zP9KvWQgAAAA?pid=ImgDet&w=320&h=320&rs=1",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("PASTILLA MR. MUSCULO ADHESIVAS LAVANDA CON 3 TIRAS ACTIVAS - MR. MUSCULO",452,2,
"https://th.bing.com/th/id/R.688c9b9951a6af316978360cd47cb2d1?rik=QpM6M2iRH1Od1Q&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("PASTILLA HARPIC FRES ACTIVA LAVANDA 35GRS",16,12,
"https://th.bing.com/th/id/R.bc860dcfa677513a39576746ae8fefc2?rik=IJTO2lzRVKGYig&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("PASTILLA HARPIC 35GRS FLORAL",16,4,
"https://th.bing.com/th/id/R.6bfd0da79259d50d4185738368adc711?rik=dQIiNXxtW3pN0w&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("JABON LA RENDIDORA ESPUMOSO 350GRS",16,12,
"https://th.bing.com/th/id/R.ed06a8fbad8274b58c126b43011b3622?rik=XJyPftpk5CIheg&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("JABON LEON DE LAVANDERÍA ESPUMOSO 350GRS",19,11,
"https://mir-s3-cdn-cf.behance.net/project_modules/disp/6bf54340074925.5606cd85cf636.jpg",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("JABON LEON DE LAVANDERÍA ALTO PODER 350GRS",19,8,
"https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1212770_A_1280_AL.jpg",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("JABON ZOTE BLANCO 400GRS",21,22,
"https://th.bing.com/th/id/R.5e037b90e835501184b2d981486cd7de?rik=Dy1OciA%2fThvkCA&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("JABON ZOTE 400GRS ROSA ",21,7,
"https://th.bing.com/th/id/R.1223fc26bca9922553565971a2d2d382?rik=k%2bxYsuyANJPCwA&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("REPUESTO VILEDA EASY WRING",120,4,
"https://th.bing.com/th/id/R.4991293d5afe6ee79c76b11c9db7ece2?rik=hyy5oS4SbM3RFg&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("TRAPEADOR PABILO SEL DE LA CASA 180GRS",50,7,
"https://th.bing.com/th/id/OIP.ZrPNovZF5G-RtC_owmca2gAAAA?pid=ImgDet&w=333&h=500&rs=1",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("ESCOBA INTERIORES SCOTCH BRITE",119,3,
"https://th.bing.com/th/id/R.d5e877ea00c19514f0fd97b7934ad8f5?rik=AtHmdB2aI8mN7g&pid=ImgRaw&r=0",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("DONA METALICA SCOTCH BRITE",14,16,
"https://surtitienda.vteximg.com.br/arquivos/ids/185058-500-500/07501023128588.7.jpg?v=637124876910670000",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("FIBRA ESPONJA PELUDA SCOTCH BRITE",11,14,
"https://geant.vteximg.com.br/arquivos/ids/200079-700-700/711665.jpg?v=636355560446730000",1);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("AROMATIZANTE GLADE GEL LAVANDA 70G",12,11,
"https://th.bing.com/th/id/R.025bb96787cc2a948a1f54ad28ad6f23?rik=AvNk7EfA9ibcOA&pid=ImgRaw&r=0",1);

/*RAMIRO CUIDADOS DEL PERSONAL*/
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Crema Body Soufflé Coco y Aceite de Monoi 200 ml",88,4,
"https://static.carethy.net/media/4/photos/products/562944/562944-body-souffle-flor-coconut-200-ml-1_1_g.jpeg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jabón Intimo Femenino Con Extracto De Manzanilla Y Jojoba 250 M",14,3,
"https://m.media-amazon.com/images/I/41I5aDqFgaL.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Desodorante Roll-On Protege y Cuida 2 x 50 ml",78,12,
"https://www.avon.co/assets/es-co/images/product/prod_1200774_1_613x613.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Creme Care Shower Cream 750ml",179,5,
"https://ae01.alicdn.com/kf/HLB1ZFCqainrK1Rjy1Xcxh5eDVXa7/Crema-de-cuidado-Gel-de-Ducha-por-Nivea-Para-Unisex-25-36-oz-Gel-de-Ducha.jpeg_Q90.jpeg_.webp",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Crema Hidratante Body Soufflé Coco Aceite de Monoi 200 ml",171,12,
"https://m.media-amazon.com/images/I/31lBrGmM+oL._AC_US200_.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Hand Q10 Anti Edad 75ml, Pack of 1",49,6,
"https://static.beautytocare.com/media/catalog/product/cache/global/image/650x650/85e4522595efc69f496374d01ef2bf13/n/i/nivea-q10-3in1-anti-age-care-hand-cream-75ml.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Body Milk Nutritivo 75 ml",39,2,
"https://static.beautytocare.com/media/catalog/product/cache/global/image/650x650/85e4522595efc69f496374d01ef2bf13/n/i/nivea-nourishing-body-milk-75ml.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea gel facial hyaluron c/200ml",108,8,
"https://dqm4sv5xk0oaj.cloudfront.net/products/4703/large/42300076.jpg?1547757310",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("NIVEA In-Shower Cocoa Butter Body Lotion, 13.5 Ounce",199,1,
"https://m.media-amazon.com/images/I/51yfV1eG+fL._SL1000_.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Jabón Líquido en Crema Care 250 ml",70,6,
"https://www.chedraui.com.mx/medias/750105452697-00-CH515Wx515H?context=bWFzdGVyfHJvb3R8MjI2MjZ8aW1hZ2UvanBlZ3xoMzQvaGVmLzg4Mjg2MDkwMDM1NTAuanBnfDZiNDc3OWZlNjJmZjQ3NGUwMjI0MmQ2YzFkMWRiYTQzZDczYjE3ZTUxZmYwM2UzYzk0YjgxYzE5ODBlNmUxZWU",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Miel Crema Manos Protectora 100 ml",36,21,
"https://gpocomcontrol-prod.s3.amazonaws.com/sys-master/s3images/h53/hbe/9189399855134/4005900556462-1_800Wx800H",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Body Aclarado Satin 125ml",34,9,
"https://m.media-amazon.com/images/I/51znAO8-msL._SY355_.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Protector Solar Facial Nivea Sun Fps 50+ Uniforme Bb 50 Ml",23,10,
"https://www.fahorro.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/4/0/4005900935854_1.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Hyaluron Cellular Filler Ampolla Firmeza 5 ml",149,3,
"https://static.beautytocare.com/media/catalog/product/cache/global/image/650x650/85e4522595efc69f496374d01ef2bf13/n/i/nivea-hyaluron-cellular-filler-anti-age-7-days-intensive-treatment-5ml.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Crema limpiadora Urban Skin Detox Claywash 3-in-1 150 ml",126,13,
"https://cdn.notinoimg.com/detail_thumb/nivea/9005800322339_01/nivea-urban-skin-detox-lote-de-regalo-xvi_.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Desodorante Roll On Naturally Good green tea 50 ml",50,21,
"https://www.beautytheshop.com/imgs/productos_cosmetica/resized/680x680/4005900758385_1.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Crema Facial Humectante 5 En 1 Nivea Efecto Mate 375ml",111,5,
"https://metrocolombiafood.vteximg.com.br/arquivos/ids/282041-750-750/40066714.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Gel Hidratante Men Fresh 150 ml",143,10,
"https://http2.mlstatic.com/D_NQ_NP_649215-MLM49001986286_022022-V.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea gel-crema hidratante facial agua de rosas 50ml",168,10,
"https://lh3.googleusercontent.com/CPvnDkdYZIRAujS1HZ2N_YYco14sEaKFxb1Xmu4tD3XkUbGh-L1caHbs6B879axPnfMyWVQKi2sZ5zUTUufiKeQtjowR1b8tsg9VscNHPC5f2afC=s360",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Mascarilla Nivea Agua de Rosas",58,10,
"https://d2o812a6k13pkp.cloudfront.net/fit-in/455x455/Productos/40438063_0120220207130203.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("NIVEA desodorante mujer roll on Naturally Good Aloe Vera 50ml",68,10,
"https://www.dosfarma.com/59086-large_default/nivea-desodorante-roll-on-naturally-good-aloe-vera-50-ml.jpg",2);


INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jabón Líquido Corporal Nivea Men Active Clean 500ml",98,10,
"https://supercarnes.com/santiago/wp-content/uploads/sites/9/2020/06/20200601_162716.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Desodorante Antimanchas Nivea Invisible Efecto Satín, 50 Ml",48,10,
"https://m.media-amazon.com/images/I/51tc3CnxxxL._AC_SX679_.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Deo Spray Aclarado Natural 150ml",54,10,
"https://www.todochaco.com/content/images/thumbs/0001274_desodorante-nivea-spray-aclarado-natural-150ml_550.jpeg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea antitranspirante aclarado satín roll on 50ml",48,10,
"https://m.media-amazon.com/images/I/51-gcM8c7mL._AC_SL1000_.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Agua Micelar Desmaquillante Efecto Mate 400 ml",148,10,
"https://d1xmyf0y1wecx6.cloudfront.net/soriana/4005900629746_4.jpeg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Antitranspirante Nivea Men Fresh Evoke En Aerosol 150 Ml",148,10,
"https://cdn.shopify.com/s/files/1/0566/4391/1854/products/4005900618993_030921_447b6c2c-b7c3-47d8-8613-e1cb282cc88c_300x300.png?v=1633449500",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Desodorante Nivea Roll On Aclarado Natural 50 Ml",148,10,
"https://res.cloudinary.com/prixz/image/upload/d_default_product_txh9zg.svg,w_500,q_auto/items/4005808837472.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nivea Men After Shave Piel Sensible Sensitive,100ml",168,10,
"https://m.media-amazon.com/images/I/71NBQJqDoFL._SY355_.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Desodorante Antitranspirante En Barra Nivea Men Invisible 50gr",78,10,
"https://m.media-amazon.com/images/I/717Dxb0UXgL._AC_SL1500_.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallitas húmedas Huggies cuidado",129,10,
"https://farmaciagloria.mx/8717-home_default/toallas-humedas-huggies-cuidado-hidratante-con-80-piezas.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallitas húmedas KleenBebé AbsorSec 240",51,10,
"https://static.merqueo.com/images/products/large/9f21a449-107d-44a8-b171-f3df01388151.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallitas húmedas KleenBebé Suavelastic",115,10,
"https://m.media-amazon.com/images/I/41niBzvTdDL._SS600_.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallas húmedas Bio Baby 3 paquetes con 80 toallas",132,10,
"https://res.cloudinary.com/prixz/image/upload/d_default_product_txh9zg.svg,w_500,q_auto/items/13117040548.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallitas húmedas Huggies Supreme 80 pzas",61,10,
"https://simarketmx.com/wp-content/uploads/2021/08/Toallitas-humedas-Huggies-Supreme-80-pzas.png",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallitas húmedas Parent's Choice 80",36,10,
"https://s.cornershopapp.com/product-images/113775.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallitas húmedas Huggies cuidado",53,10,
"https://farmaciagloria.mx/8717-home_default/toallas-humedas-huggies-cuidado-hidratante-con-80-piezas.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallitas húmedas Baby Soft essentials 80 pzas",25,10,
"https://cdn.shopify.com/s/files/1/0706/6309/products/mayoreototal-caja-de-toallas-humedas-baby-soft-nina-en-18-paquetes-con-80-toallas-indelpa-toallas-humedas-indelpa-sku_300x300.png?v=1563809173",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Aceite para bebé Mennen baby magic",70,10,
"https://www.fahorro.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/7/5/7501035908246_1_1.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Talco Johnson's baby 200 g",70,10,
"https://s.cornershopapp.com/product-images/923462.jpg?versionId=Kht1d98JvqNf4SRxN2xxDm49xofOVjzU",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Talco Johnson's baby protección pura 400 g",117,10,
"https://beelocalapp.com/media/catalog/product/cache/7af41bd5343906fd08b9c4b05130dd59/7/4/741._johnson_talco.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Aceite para bebé Mennen baby magic",25,10,
"https://www.fahorro.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/7/5/7501035908246_1_1.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Aceite Johnson's baby 200 ml",70,10,
"https://www.chedraui.com.mx/medias/7891010031053-01-CH300Wx300H?context=bWFzdGVyfHJvb3R8NTg1OXxpbWFnZS9qcGVnfGg3Zi9oNjEvMTE0NjA4NzkxNTUyMzAuanBnfGYyNTMxNTg4MzNhNjJkZmZmMGE4NmI4MTdjYWY1ZGYwNjk2NDlmNmY2NTJmODdkZDEyYWYwNmIzYzczN2QyYzU",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallas femeninas Kotex nocturna con alas flujo",55,10,
"https://www.farmalisto.com.mx/98972/comprar-kotex-nocturna-con-alas-paquete-con-5-toallas-femeninas-precio.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallas femeninas Kotex nocturna con alas flujo",70,10,
"https://ibarramayoreo.com/images/IMAGENES/52457/01.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Protectores Always diarios largos 16 pzas",30,10,
"https://images.rappi.com.mx/products/977652184-1589990531557.png?d=200x200&e=webp",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallas femeninas Always suave ultrafina con alas 10",29,10,
"https://farmaciasdelpueblo.vteximg.com.br/arquivos/ids/177234/Always-Toallas-Ultrafina-Suave-Femeninas-C-alas-x-10-un-7500435187121_img1.png?v=637843281204170000",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallas femeninas Always Nocturna suave ultra",26,10,
"https://www.chedraui.com.mx/medias/7500435182577-00-CH515Wx515H?context=bWFzdGVyfHJvb3R8NTE4NTN8aW1hZ2UvanBlZ3xoNjgvaDAxLzExMjI2NjU4MTc3MDU0LmpwZ3xhZTQ3ODQ5Yzk1ZWFhMjEyYzViY2JkZWEwMjAwNzhkMzI2MDFkYzVmYWNiNWQ0MzRkNWQwMDIzYzhlODY5N2Rk",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallas femeninas Kotex nocturna con alas flujo",35,10,
"https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/7/5/7501943421141_image.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Protectores Naturella Diarios con manzanilla 40",33,10,
"https://farmaciagloria.mx/7129-large_default/panty-protectores-naturella-con-40-piezas.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bolitas de algodón Medimart 150 pzas",24,10,
"https://res.cloudinary.com/walmart-labs/image/upload/w_225,dpr_auto,f_auto,q_auto:good/gr/images/product-images/img_large/00750104862362L.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Algodón Medimart plisado 100 g",26,10,
"https://res.cloudinary.com/walmart-labs/image/upload/w_225,dpr_auto,f_auto,q_auto:good/gr/images/product-images/img_large/00750102060706L.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Torundas de algodón Medimart jumbo 70 pzas",32,10,
"https://res.cloudinary.com/walmart-labs/image/upload/w_225,dpr_auto,f_auto,q_auto:good/gr/images/product-images/img_large/00750102060946L.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Algodón Medimart absorbente plisado 50 g",18,10,
"https://res.cloudinary.com/walmart-labs/image/upload/w_225,dpr_auto,f_auto,q_auto:good/gr/images/product-images/img_large/00750104862362L.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tinte para cabello L'Oréal Paris Imédia Excellence",78,10,
"https://cdn1.coppel.com/images/catalog/pr/7206762-1.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tinte para cabello L'Oréal Paris Imédia Excellence 5",78,10,
"https://d1xmyf0y1wecx6.cloudfront.net/superwalmart/00750102727508L.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tinte para cabello Garnier Nutrisse 50 castaña",64,10,
"https://www.farmalisto.com.mx/77955-large_default/comprar-nutrisse-tinte-castano-c-cl-50-c-1-precio.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Cepillo dental Colgate 360° medio 1 paquete con 2 pzas",52,10,
"https://http2.mlstatic.com/D_NQ_NP_653913-MLM46681924400_072021-O.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Cepillo dental Colgate slim soft black suave 1 paquete con 2 pzas",59,10,
"https://i.ebayimg.com/thumbs/images/g/grUAAOSwhvNhfUjN/s-l300.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Cepillo dental Oral-B 3D White 1 paquete con 2 pzas",49,10,
"https://res.cloudinary.com/prixz/image/upload/d_default_product_txh9zg.svg,w_500,q_auto/items/3014260010980.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Shampoo Head & Shoulders control caspa limpieza renovadora 375 ml",65,10,
"https://dulus.store/wp-content/uploads/2021/08/7.-SHAMPOO-LIMPIEZA-RENOVADORA-HEAD-_-SHOULDERS-375-ML.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Shampoo Herbal Essences smooth rose hips 400 ml",69,10,
"https://walmartsv.vtexassets.com/arquivos/ids/180670-800-450?v=637643134969170000&width=800&height=450&aspect=true",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Shampoo Head & Shoulders purificación",65,10,
"https://d20f60vzbd93dl.cloudfront.net/uploads/tienda_008913/tienda_008913_c15d6fae4473e68b96eced3a5279fec53569d25f_producto_large_90.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Shampoo Pantene Pro V hidratación extrema 400",65,10,
"https://http2.mlstatic.com/D_Q_NP_605647-MLM49375564601_032022-AB.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Hisopos de algodón Medimart con palillo",15,10,
"https://d1xmyf0y1wecx6.cloudfront.net/soriana/7502263760224-300x300.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Hisopos Zuum aplicadores biodegradables 120 pzas",22,10,
"https://uscottonmexico.com/wp-content/uploads/2020/06/Zuum-Eco_Aplicadores-Biodegradables-300x300.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Hisopos Cotonetes Johnson and Johnson",54,10,
"https://beelocalapp.com/media/catalog/product/cache/7af41bd5343906fd08b9c4b05130dd59/4/9/494._cotonetes_jj.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Hisopos de algodón Equate 400 pzas",42,10,
"https://ik.imagekit.io/instaleap/bodegaAurrera/image/upload/v1591796520/gr/images/product-images/img_large/00750649500053L2.jpg?tr=w-449",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Cortaúñas Cala con lima 1",25,10,
"https://cdn.shopify.com/s/files/1/1277/3791/products/70-078b_lg_1024x1024.jpg?v=1648134750",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Cinta adhesiva Nexcare 3M Micropore para piel",50,10,
"https://tradepoint.com.mx/5321-large_default/cinta-adhesiva-nexcare-3m-micropore-piel-de-25-cm-x-5-m-1-1-40176.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Gasa Le Roy premium 10 cm x 10 cm 10 pzas",30,10,
"https://rjmedical.mx/wp-content/uploads/2020/12/le-roy-gasa-esteril-premium-10x10cm-caja-con-10-piezas-material-de-curacion-729513103991.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Cortaúñas Trim grande y chico 2 pzas",57,10,
"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00007160309625L.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tijeras para uñas Cala 1",65,10,
"https://ik.imagekit.io/instaleap/bodegaAurrera/image/upload/v1591796520/gr/images/product-images/img_large/00061651320700L.jpg?tr=w-259",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Alicate Cala para cutícula",129,10,
"https://walmartgt.vtexassets.com/arquivos/ids/180621-800-450?v=637607863854030000&width=800&height=450&aspect=true",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tela adhesiva Sedasiva 2.50 mc x 5 m 1 pza",63,10,
"https://cdn.shopify.com/s/files/1/0299/9369/7364/products/7702003450426_1024x.jpg?v=1622651616",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Vaso recolector Protec para muestras clínicas",12,10,
"https://d1xmyf0y1wecx6.cloudfront.net/superwalmart/00750649500728.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tijeras para cutícula Cala 1",12,10,
"https://m.media-amazon.com/images/I/51VgC2VZHWL._SX569_.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Venda Le Roy de alta compresión ancho 10 cm",85,10,
"https://farmaciadigitalff-media.azureedge.net/catalog/product/cache/a77266c1abf4147499139dcd165bfd03/8/6/868abd02651bdfc9a222f4627b5499fc2543ca03930141a288a0b2351f122dca.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Pastillero Ezy Dose doble compartimento 1 pza",41,10,
"https://ik.imagekit.io/instaleap/bodegaAurrera/image/upload/v1591796520/gr/images/product-images/img_large/00002571567433L.jpg?tr=w-449",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Lancetas Accu-Chek softclix 100 pzas",262,10,
"https://www.eypro.com.mx/wp-content/uploads/2020/07/AccuChek-Softclix-100-Lancetas.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Rastrillos desechables Gillette Prestobarba 3 2",58,10,
"https://gpocomcontrol-prod.s3.amazonaws.com/sys-master/s3images/h36/h4c/9592627462174/7702018874729-1.jpg_800Wx800H",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Rasuradoras Equate para dama antidesliz mango",25,10,
"https://res.cloudinary.com/walmart-labs/image/upload/w_225,dpr_auto,f_auto,q_auto:good/gr/images/product-images/img_large/00750179165766L.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Rastrillos desechables Gillette Prestobarba 3",70,10,
"https://www.chedraui.com.mx/medias/7702018874729-01-CH1200Wx1200H?context=bWFzdGVyfHJvb3R8MTE2MjM3fGltYWdlL2pwZWd8aDFiL2hjNy85ODc0NTA5NDYzNTgyLmpwZ3wwMGMyYWExM2VlNDRiMzljMDMwYWMxODMzZGFjOWYwMTY2ODQ3ZWZiODNhMjVkZGIxOTU1NjFhNTA1ZmMyNjM4",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Recortadora Remington 5 en 1 Negra",300,10,
"https://dehogar.com.mx/wp-content/uploads/2021/05/PG181-B.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Papel Higiénico Great Value premium 32 rollos",185,10,
"https://super.walmart.com.mx/images/product-images/img_medium/00750179164981m.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Papel higiénico Regio Just 1 con 24 rollos",224,10,
"https://m.media-amazon.com/images/I/41VwOlX+TkL._SL500_.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Papel higiénico Regio Luxury Almond Touch 18",99,10,
"https://cdn.shopify.com/s/files/1/0481/7387/5367/products/regio4_300x300.png?v=1600229536",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Papel higiénico Kleenex Cottonelle elegance 16",112,10,
"https://i0.wp.com/superfenix.mx/wp-content/uploads/2022/06/7506425627646.jpg?fit=800%2C800&ssl=1",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Papel higiénico Suavel 32 rollos de 200 hojas dobles",120,10,
"https://ik.imagekit.io/instaleap/bodegaAurrera/image/upload/v1591796520/gr/images/product-images/img_large/00750642561584L.jpg?tr=w-259",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Papel higiénico Great Value original 4 pzas",20,10,
"https://s.cornershopapp.com/product-images/107651.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Papel higiénico Regio Aires de Frescura 6 rollos",32,10,
"https://www.chedraui.com.mx/medias/7501036623988-00-CH300Wx300H?context=bWFzdGVyfHJvb3R8MTgxODB8aW1hZ2UvanBlZ3xoOWMvaDhlLzExODkxNjU3NTM5NjE0LmpwZ3w0YTgyYTU4M2U0NjZjMTVhOWRlYTBmMmVmNTliM2Y0MDhkYWIzMmM3NGIwMzYzZjZhZDM5MTc5YzA1Zjc2ODg5",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Papel higiénico Regio Rinde + 12 rollos",92,10,
"https://surtitienda.vteximg.com.br/arquivos/ids/170463-2000-2000/07501036621649.1.jpg?v=636862252603100000",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Enjuague bucal Colgate Total 12 en spray extra",50,10,
"https://www.chedraui.com.mx/medias/7509546664774-00-CH1200Wx1200H?context=bWFzdGVyfHJvb3R8MTI2MDY5fGltYWdlL2pwZWd8aDQ1L2gxZC8xMjQwOTg0Njc5MjIyMi5qcGd8Y2I4N2Q3ODhmZWZlMzAzNTVmN2I3YWRlYzJhZGNkZWU2MzBmYzVlNGI1YTA1MmJkYTc2N2E4NTAzNDM2N2VkNQ",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Enjuague bucal Listerine Cool Mint menta 1 l",155,10,
"https://ibarramayoreo.com/images/IMAGENES/52136/01.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Enjuague bucal Colgate Luminous White brilliant",65,10,
"https://s.cornershopapp.com/product-images/302581.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Enjuague bucal Colgate Total 12 encías reforzadas",70,10,
"https://www.colgate.com/content/dam/cp-sites/oral-care/oral-care-center/global/latam/product-detail-pages/total-12-encias-reforzadas-enjuague.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Enjuague bucal Colgate Luminous White carbón",70,10,
"https://www.colgate.com/content/dam/cp-sites/oral-care/oral-care-center/global/latam/products/mw-lw-carbon-250ml.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Enjuague bucal Listerine Cool Mint menta 500 ml",82,10,
"https://tumarchante.mx/wp-content/uploads/2021/06/Enjuague-bucal-Listerine-Cool-Mint-500-ml-.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bálsamo para labios Renova humectante",43,10,
"https://cdn.shopify.com/s/files/1/0244/8136/6080/products/Fresa-abierto_1_medium.jpg?v=1616603085",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Delineador para labios Olé! nude 3 g",29,10,
"https://http2.mlstatic.com/D_NQ_NP_724101-MLM47876388700_102021-V.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bálsamo para labios Burt's Bees cereza silvestre",70,10,
"https://mexico.burtsbees.com/wp-content/uploads/sites/12/2017/07/02-2.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Delineador para labios Olé! rojo 3 g",29,10,
"https://ik.imagekit.io/instaleap/bodegaAurrera/image/upload/v1591796520/gr/images/product-images/img_large/00750228363319L2.jpg?tr=w-449",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bálsamo para labios Eos Evolution of Smooth",99,10,
"https://ss704.liverpool.com.mx/xl/1086675745.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bálsamo para labios Eos malvavisco tostado",43,10,
"https://d1flfk77wl2xk4.cloudfront.net/Assets/26/016/L_p0123301626.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bálsamo para labios Eos Karité + Color super",100,10,
"https://images-na.ssl-images-amazon.com/images/I/412%2ByuqGY3L._SR600%2C315_PIWhiteStrip%2CBottomLeft%2C0%2C35_PIStarRatingFOURANDHALF%2CBottomLeft%2C360%2C-6_SR600%2C315_ZA210%2C445%2C290%2C400%2C400%2CAmazonEmberBold%2C12%2C4%2C0%2C0%2C5_SCLZZZZZZZ_FMpng_BG255%2C255%2C255.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bálsamo para labios Eos Evolution of Smooth",71,10,
"https://ss704.liverpool.com.mx/xl/1083123199.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Alcohol en gel Zuum desnaturalizado spray",59,10,
"https://ik.imagekit.io/instaleap/bodegaAurrera/image/upload/v1591796520/gr/images/product-images/img_large/00750102060861L.jpg?tr=w-259",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Spray fijador Tresemmé extra firme 300 ml",61,10,
"https://m.media-amazon.com/images/I/3112XG6685L._AC_US200_.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Gel fijador Chao Nudos greñas, en spray 230 ml",38,10,
"https://www.farmalisto.com.mx/78367-large_default/comprar-gel-chao-grenas-spy-fij-230ml-precio.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jabón de tocador Rexona V8 142 g",10,10,
"https://images-ti-vm1.tiendainglesa.com.uy/small/P213600-1.jpg?20180705102456,Jabon-de-Tocador-REXONA-Orchid-Fresh-con-3-Unidades-125-gr-en-Tienda-Inglesa",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jabón de tocador Palmolive Neutro Balance",69,10,
"https://cdn.shopify.com/s/files/1/0297/6812/2412/products/JABON_NEUTRO_BALANCE_PALMOLIVE_150_GR_600x.png?v=1635273207",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jabón de tocador Palmolive Naturals",55,10,
"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750954607462L.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jabón de tocador Palmolive Neutro Balance",25,10,
"https://detqhtv6m6lzl.cloudfront.net/HCLContenido/producto/FullImage/7509546074979-1.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jabón de tocador Palmolive Naturals",55,10,
"https://d1zc67o3u1epb0.cloudfront.net/media/catalog/product/cache/23527bda4807566b561286b47d9060f4/7/5/7509546074726_3.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jabón de tocador Palmolive Naturals",55,10,
"https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1355163_A_1280_AL.jpg",2);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jabón de tocador Grisi concha nácar aclarante",23,10,
"https://cdn.shopify.com/s/files/1/0706/6309/products/mayoreototal-media-caja-jabon-de-tocador-grisi-concha-nacar-de-100-grs-en-25-piezas-grisi-jabon-de-tocador-grisi-sku_270x.jpg?v=1563809256",2);


/*XOCHITL DESPENSA*/
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Azucar",18,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyG7oBiZxDPla_GXvapc1-3uzGIys3lDryhA&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Aceite Cristal 1L.",35,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsFyXtEI_SOLotHhbIA7DD744hPiHRyTJmoQ&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Aceite Cristal 1/2L.",52,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKZeUOUrQ-UeqD3YyPAx0-jmmcUbUEohQR8g&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Aceite Cristal 5L.",120,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcCMxEi75a9812W1DjGPWyRlANYooU576gZA&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Aceite 1-2-3 1L.",48,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX941rMTfVarxZQ_MLgHIPpoYUsz2d1hFODA&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Aceite 1-2-3 1/2L.",18,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlGnVaVOQtl4wfCZIblFDPtE6Q6mbSXPzG3w&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Sal La Fina 1k",13,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSODhIy5UWE3Qk21LpBUJAm7XNJjh4zVJvwIQ&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Harina para hot cakes",26,8,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWSMXBkNUM4u-ImwHjx1mN0jHmlmN4vi2zdQ&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Frijoles bayos",18,7,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbMLJ-mey8MvxKC1hdT__6CbdjVRzs2EkYjQ&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Frijoles negros",18,7,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6UX_AxxhrFHt-J82-kBdKolViHJaGNBxbdQ&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Leche condensada",19,15,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRayutjPCKOaNOgtdg34TmcEyPH8D2ZoiF3Q&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Leche envaporada",22,15,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhkmrph81BMLBl9sXuiywB8fFiuKr6wx7BWw&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Leche deslactosada Alpura",24,15,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKuzYoz9W8R_qL-ELE6nrhpZTb3Vr4n8ejPA&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Leche entera Alpura",22,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXanuHSEMqkmbJCMxgOvxaeQnUNd_y7YT0hw&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Harina de Trigo 1K ",14,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLXOWUdusvi_2dRqkqxr8ggdtJikI_2osHOg&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Harina Maseca 1k",15,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMMP8K1cAxC0IBR0tKwhSKb9sGzUKsJRR3rA&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Atún Dolores agua",18,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTm6L45_8GeIAkRBVQT3g--h2PQfY50Gj3DQ&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Atún Dolores aceite",18,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFAK9HeNuFCigdG1jxwLC9N-nkk_am7-yGhw&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Atun Nair agua",18,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_BMHjOTcbXBwKIVXXHZ8LJbkq-Qynkh0J2w&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Atun Nair aceite",18,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBvdPximQihZENkPxuEPZ1EhddepGMDrdnAw&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Sopa La moderna",7,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvgU-j2T_L8farQtkLImzjvpoCb8XY9RBqeg&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Arroz Saman 1k",28,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZl9CuzdAES9MRIfZ0WHP0DVbH9RfaMpYJ8w&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Frijol Negro 1k",30,10,
"https://cdnx.jumpseller.com/la-familia-avilena-envios/image/8979590/resize/570/765?1653498997",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Frijol Pinto 1k",32,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGa99BKGoMtlC4bpT5OBsebVM04rwaRu0Cjg&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Garbanzo 1K",25,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRanLlFY-h6R0IMW7zO2hU2fgxHgLjY0IBzA&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Aba 1K",70,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwhvYpFxo-pd_0-7v1tiHuW737-Xh9Va0kHA&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jugo sasonador Maggi 100ml",39.50,10,
"https://www.smartnfinal.com.mx/wp-content/uploads/2021/02/95823-Jugo-sazonador-de-mesa-Maggi-250-g.jpg",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Salsa inglesa Crosse & Blackwel 145ml",39.50,10,
"https://www.smartnfinal.com.mx/wp-content/uploads/2021/02/95823-Jugo-sazonador-de-mesa-Maggi-250-g.jpg",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Salsa Valentina 350ml",15,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4XzUC2N5xgrdYeUmtt1kJ9f-LT7BCmpkuLw&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Salsa Botanera 600ml",18,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfVznA9GP-YFaoT3wbAxvA25rmNCXG2tMQgQ&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Maizena de sabor 47g",8,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6EHe-gR3g3PuHQmRfwJYxJfnw_Vpylzdszg&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Gelatina D'Gari 120g",11,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQam3eFseO6AOoDcvjrt8kG4huFfI6L1tlebw&usqp=CAU",3);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Té McCormick",22,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfugWsZQT6Nvo6gMYSy9ZfUJppmh5c44w-5w&usqp=CAU",3);


/*B¿BEBIDAS XOCHITL*/
/*BEBIDAS*/
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Agua Bonafont natural 1.5L",12,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3FRQXMuTMmXCAPJx1fWh2fWz0KwgkSYgk-Q&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Agua Bonafont Sabor 1L ",12,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_LiEkjaOOV7I17umljLv8MHcv1JCSf-ZVgQ&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Agua Ciel 1l",13,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7DB-_UfAMRFV98ETHiDtHu54nAwSEc5L7uQ&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Agua Bonafont natural 600ml",6.5,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSstO97poCjat217MhPq0ALBtOvX7C15nR9tg&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Agua Bonafont Kids 300ml",7,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS09oV8U6uqMdrSlgtj7VIyxSvOaHwt1keR523OHmqQGyZEdW6ZtDmHPZMhclOqoj9APWE&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Arizona 680ml",15,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReEv2_AuUTlgRzM76ouCA7VBUElf09D2HZKQ&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Agua Bonafont 20L",42,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTt9BX-YcYEaBbTEdHn1FtAFLfRhQPDxvzoFyBz5XPeZ7ex0Wv4n4nTUOowAI7Zfh_KZM&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Agua mineral Peñafiel 1L",15,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHj9Ig7cwO5P1r_ezuu7jA432Wm9RqsRtT7A&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Agua mineral Peñafiel 2L",30,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHEHhHeA3Ky4nc9TyzlQ3csbLmBW-6y6FOBQ&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Refesco Coca-cola 2L",33,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMIDm2ElNgksZeyC5mgaEKizrjFZ7YTDjfuA&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Refresco Squirt 1.5L",16,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7LBi1SvrnIo--P-s--X1T2A-ichOT1FB92g&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Refresco Pepsi 2l",10,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTT9Vb8ceGxZ0KHzoHuZbfqQ9mDOFQDirlKA&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Refresco Sidral Mundet 2l",12,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyV_iUhP1QrHa16s_biXrDMgEHA0lOcA7VCQ&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bebida deportista Powerade 1L",26,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaOwzfPDWycVSc9Ce4z7LLCTdg638QfFGU2g&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Gatorade 750ml",15,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvQoX6F6I1_D1p1iI2JEmEQTrJG0uihE3Cug&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bebida energisante Monster 473ml",12,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3rxNcYYeqjXcpIIxEbOmbKpBXx0BlxT-TEw&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bebida Vive 100% 500ml",12.5,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRupVY_sjrBWbcOd-eHpwY4oo3nWy0OJX2HOg&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bebida Amper 473ml",16,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWsHwW5sV6tJPeSju6U9117k4cMl41nLTOdw&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jugo Boing 500ml",11,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6zdEp5fLdONqf_YOhqMLNw3mlDMnnmIui4w&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jugo Boing 1L",20,10,
"https://s.cornershopapp.com/product-images/338542.jpg?versionId=g3gpyaTHHeV8V7MVxHMyDQixk25BEeSR",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jugo del Valle 237ml",12,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrM9MclPUNfyDYI_TRQYgblUeFJonagkUOdA&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jugo Jumex 237ml",10,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMvbqnGiljkrcK4EQ1PljARGaw4GZBvmPA_Q&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jugo Jumex 1L",22,10,
"https://cdn.shopify.com/s/files/1/0362/2846/4776/products/jumex_800x.jpg?v=1585352524",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Cerveza Barrilito 6 botellas 325ml",62,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_mO6if6wVWNu5qvQQC9NTHWyiQrlaWE1NzA&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Cerveza obscura Victoria 1.2l",35,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyO6YzJt_3ECcmUQPRhleqqsiDgDvliDrQBg&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Cerveza Modelo Six 355ml",91,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBCDOyuJhgyiojAYFKMe-Oh7MoKcil9q6BCA&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Cerveza Obscura Victoria Lata 473ml",19,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPF4xjzN69ahlsb35Cb3ymrLgIdaxltN_TLw&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tequila Gran Centenario 950ml",22,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9BaOggSW9HTFkUsPPFF_Foj3SYu-EmqgBqXF_AY2_WINK69CkdZGBGNWi20Jy4UCGdVI&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tequila Don Julio 70 700 ml",1100,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST5LeOhLkQNhYf4IFI1rIGQ9dhf4ST8jX2YIeEwjP4jamuUI9gBayR2RffEskjyOXc8j0&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tequila Jose Cuervo Especial Reposado 990 ml",220,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiFzPu3LT3_4X08V0TyQNWGN7YprIqFiMnMg&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Brandy Torres 5 Solera Reserva 700 ml",242,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAoszK8sGBG8ConcWI5L4Ypszb5vNQISvGCQ&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Brandy Azteca de Oro solera reservada 700 ml",182,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV0IztWlMu8eFFT7XVCBzp8GQQurSj4Yad_w&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tequila Sauza Reposado Hacienda 700 ml",242,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_6EWLVWdKlB7HjXpx0bJtzoLKsyr20fV-RA&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tequila Maestro Dobel Diamante 700 ml",700,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrow-DXC0D7WkbbfVbS5xfnm369dcFD3qFwg&usqp=CAU",4);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tequila 1800 Añejo 700 ml",700,10,
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ58leM3HlUQCCYIxHfB1doXtcRZmMVQlFfend2oznvPgQTX99fE5fJn7n3RuBfy2hsuzs&usqp=CAU",4);

/*dulces*/
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Rufles",20,2,
"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750047800798L.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tupsi",33,2,
"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750106350139L.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Chocopanda",10,4,
"https://alimentosbest.com/wp-content/uploads/2020/03/doypack-choco-panda.png",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("panditas",22,7,
"https://onixsuper.com/wp-content/uploads/2020/08/757528042042.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Barritas",20,1,
"https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/303569_S_1280_F.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Pelon",20,1,
"https://saboresdemexicoencolombia.com/wp-content/uploads/2020/08/para-tienda-virtual-2021-42.png",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Mazapan",10,5,
"https://www.costco.com.mx/medias/sys_master/products/h13/h05/70367362285598.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Duvalin",15,5,
"https://images-na.ssl-images-amazon.com/images/I/51LH2-TbhoL._SR600%2C315_PIWhiteStrip%2CBottomLeft%2C0%2C35_PIStarRatingFOUR%2CBottomLeft%2C360%2C-6_SR600%2C315_SCLZZZZZZZ_FMpng_BG255%2C255%2C255.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Doritos",35,1,
"https://m.media-amazon.com/images/I/81-DyMXy6tL._SX679_PIbundle-64,TopRight,0,0_AA679SH20_.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Takis",20,7,
"https://m.media-amazon.com/images/I/81MZnOeDrwS._SL1500_.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Marias",25,5,
"https://www.laranitadelapaz.com.mx/images/thumbs/0007121_galletas-marias-la-moderna-20-paquetes-de-170-g_510.jpeg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Skittles",15,1,
"https://officemax.vteximg.com.br/arquivos/ids/200966-720-720/52290_1.jpg?v=637521165769770000",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tootsie Rol",35,7,
"https://s.cornershopapp.com/product-images/587157.jpg?versionId=AtOL3L7dvjEqzcSElOlh1A_MSKiSwjDz",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bonobon",35,6,
"https://abasto.com/wp-content/uploads/2016/05/BON-BON-Peanut.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Chocorroles",15,4,
"https://www.super-deli.com.mx/75-home_default/marinela-choco-roles-pina-80-gr.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Gansito",12,5,
"https://mexisnack.mx/129-large_default/gansito.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bocadin",10,7,
"https://surtitienda.vteximg.com.br/arquivos/ids/188876-2000-2000/00025046150137.1.jpg?v=637618265999730000",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Dragonzitos",4,1,
"https://images.cults3d.com/Oa8px9o9LnNkI78uN-zDgcgFN0E=/https://files.cults3d.com/uploaders/16906133/illustration-file/bd73f588-cadd-43d9-bd18-8433fd468ce6/Do16ZmxW0AIdUPC.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tix tix",12,7,
"https://masbodegaonline.com.mx/media/catalog/product/i/m/image_7_8144.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Pulparindo",10,8,
"https://cdn.donapelos.de/wp-content/uploads/100389.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Chicle Bubalo",5,1,
"https://www.frutitos.com/1723-large_default/bubbaloo-chicle-con-relleno-liquido-mora.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Trident",25,10,
"https://m.media-amazon.com/images/I/61wIYeXAcuL.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Crunch",11,4,
"http://www.dulcesonline.com/63-1104-thickbox/crunch-10-36.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Chocolate carlos v",15,5,
"https://www.fahorro.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/7/5/7501058638083.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bubulubu",5,1,
"https://walmartni.vtexassets.com/arquivos/ids/217590-800-450?v=637891654469200000&width=800&height=450&aspect=true",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Paleta payaso",25,3,
"https://m.media-amazon.com/images/I/7133zxpvSTL._SX425_.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Malva viscos",15,3,
"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750179164996L.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Picafresa",5,6,
"https://www.marialabonita.com/wp-content/uploads/2019/08/pica-fresa-gigante-12g-300x300.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Hersheys",12,6,
"https://m.media-amazon.com/images/I/71ApApYVDaL._SL1500_.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Reeses",14,1,
"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750102459251L.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tamborines",15,1,
"https://cdn.shopify.com/s/files/1/0356/1088/6280/products/WhatsAppImage2020-03-31at11.00.17_4_650x.jpg?v=1587148655",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Rockaleta",10,5,
"https://masbodegaonline.com.mx/media/catalog/product/i/m/image_7_5655.jpeg?optimize=low&bg-color=255,255,255&fit=bounds&height=700&width=700&canvas=700:700",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Skwintles",13,6,
"https://tumarchante.mx/wp-content/uploads/2021/04/AnyConv.com__Dulces-Skwinkles-Salsagueti-24g.webp",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Sabritas",18,8,
"https://kluu.mx/2617-home_default/sabritas.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Fritos",15,7,
"https://momoluco.com/wp-content/uploads/2020/12/501.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Wapas",16,3,
"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750302915190L.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Galletas Chokis",19,2,
"https://agustomarket.com/wp-content/uploads/2021/12/galletas-chokis-clasica.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Galletas Oreo",19,5,
"https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/7/6/7622210833662_1_image.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Cremino",10,5,
"https://surtitienda.vteximg.com.br/arquivos/ids/188467-2000-2000/00000075024635.1.jpg?v=637599960208900000",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Lucas",10,5,
"https://antojitos-mx.com/WebRoot/Store9/Shops/8d3f15d7-99c2-46bb-9867-a38fec5a288d/60D8/C66F/1456/B682/0FC2/0A48/3556/72A4/lucas-muecas.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Damy",6,5,
"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00002414202003L.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Chips",14,3,
"https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/7/4/742545_image.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Rancheritos",15,1,
"https://i.ytimg.com/vi/B12fR80oahk/maxresdefault.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Miguelito",10,1,
"https://s.cornershopapp.com/product-images/995487.jpg?versionId=HfAyfHnyrsyU8CeeW7H3z7MtcdLM4Kgc",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Mantecadas",16,1,
"https://detqhtv6m6lzl.cloudfront.net/wp-content/uploads/2021/07/7501000112401-1.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Conchones",18,1,
"https://mx.openfoodfacts.org/images/products/750/100/011/2203/front_es.5.full.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Crujitos",13,1,
"https://modeloramanow.vtexassets.com/arquivos/ids/156560/SKU-933-CRUJITOS.jpg?v=637850398843430000",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Paleta tarrito",5,1,
"https://www.sanborns.com.mx/imagenes-sanborns-ii/1200/757528032203.jpg",5);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Mamut",5,1,
"https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750100065137L.jpg",5);



/*farmacia*/

INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Condones",28,6,
"https://www.yza.mx/dw/image/v2/BDPM_PRD/on/demandware.static/-/Sites-masterCatalog_YzaMexico/default/dwb0837565/images/large/7502214982491_1.jpg?sw=1000&sh=1000",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tabcin",23,2,
"https://farmaciasgi.com.mx/wp-content/uploads/2018/04/553327-TabcinAcido-Acetilsalicilico-324mgFenilafrina-8mgClorfenamina-2mg-C-12-Tabs-2.png",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Silka Medic",30,2,
"https://farmaciagloria.mx/8241-large_default/silka-medic-15-g-gel.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Picot plus",23,7,
"https://www.sams.com.mx/images/product-images/img_small/980015807s.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Suero Electrolit",20,8,
"https://www.smartnfinal.com.mx/wp-content/uploads/2022/04/16972-Suero-rehidratante-horchata-Electrolit-625-ml.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Cubrebocas",6,10,
"https://www.innovasport.com/medias/cubrebocas-personalizado-under-armour-sports-is-1368010-003-1.png?context=bWFzdGVyfGltYWdlc3wzMDEzOTl8aW1hZ2UvcG5nfGltYWdlcy9oMzgvaGFmLzk3Mjc4MjIwMDQyNTQucG5nfDIxNTVlMDcyOTRiYjc4MGE0MDk5MjhhZTA1NzZlMzFiNzhlYmZlNmNjODRlZGQ2Y2RkYWI2YzllMWRjNjRlZGE",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jabon de Azufre",34,11,
"https://www.fahorro.com/media/catalog/product/cache/74c1057f7991b4edb2bc7bdaa94de933/j/a/jabon-grisi-100-g-barra-azufre-1209_1.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Minoxidil",28,11,
"https://cdn1.evitamins.com/images/products/Kirkland_Signature/318063/1400/318063_front2021.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Bloqueador solar",30,3,
"https://www.costco.com.mx/medias/sys_master/products/h68/hf5/65556713439262.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Pilexil",40,4,
"https://www.costco.com.mx/medias/sys_master/products/hd4/ha0/48606385176606.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Crema para manos",35,1,
"https://artecconsultants.com/wp-content/uploads/2021/01/las-10-mejores-cremas-de-manos.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Gel antibacterial",20,2,
"https://ss704.liverpool.com.mx/xl/1096067824.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Paracetamol",22,2,
"https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1028081_A_1280_AL.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Sintron",33,2,
"https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1045954_A_1280_AL.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Ventolin",43,2,
"https://www.fahorro.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/7/5/7501043163231_1.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Orfidal",36,4,
"https://nomenclator.org/img/envase.1200/orfidal-1-mg-comprimidos-50.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Ibuprofeno Kern",28,3,
"https://www.kernpharma.com/sites/default/files/styles/product_full_715x/public/productos/imagenes/ibuprofeno-kern-pharma-efg-40-mgml-150-ml-5209.jpeg?itok=M-b8qp7R",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("VapoRub",18,1,
"https://www.fahorro.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/7/5/7590002012468_5.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Toallitas humedas",38,1,
"https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/3/3/334831_1.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Pomada de la campana",18,1,
"https://www.sanborns.com.mx/imagenes-sanborns-ii/1200/7501065628145.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Nutraplus",28,3,
"https://farmaciaproderma.com/wp-content/uploads/2018/06/nutraplus-4-600x600.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Naproxfer",19,2,
"https://www.fahorro.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/7/5/7502223709829.png",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Fenazopiridina",34,5,
"https://cdn.shopify.com/s/files/1/0282/1321/5307/products/FENAZOPIRIDINAmedley100g_580x.png?v=1614789964",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Biotrivin",23,5,
"https://www.farmalisto.com.mx/105975-large_default/comprar-biotrivin-complejo-b-30-tabletas-precio.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Indanet",49,2,
"https://prixz.com/salud/wp-content/uploads/2020/11/INDANET.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Jarabe Debequin-c",34,3,
"https://s.cornershopapp.com/product-images/2030651.jpg?versionId=0dhprqzKFMS3ynqv7Qb2BaG32EPXINMV",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Flexiver compuesto",34,2,
"https://bspharma.net/wp-content/uploads/2019/11/FLEXIVER-COMPUESTO-15215MG-.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("bendas",43,2,
"https://img.uline.com/is/image/uline/S-20905?$Mobile_Zoom$",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Crema neutrogena",30,4,
"https://www.neutrogena.es/sites/neutrogena_es/files/styles/product_image/public/product-images/hb_gel_crema-es.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Advil",33,7,
"https://www.fahorro.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/7/5/7501108767527_1_3.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Next",13,4,
"https://m.media-amazon.com/images/I/81DqXI0h2IL._AC_SY450_.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Gelmicin",23,3,
"https://calimaxmx.vtexassets.com/arquivos/ids/195219-800-450?v=637509351747670000&width=800&height=450&aspect=true",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Aspirina",35,4,
"https://www.soriana.com/dw/image/v2/BGBD_PRD/on/demandware.static/-/Sites-soriana-grocery-master-catalog/default/dw25073da4/images/product/7501008491966-B.jpg?sw=1000&sh=1000&sm=fit",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Enjuague Bucal",46,2,
"https://tumarchante.mx/wp-content/uploads/2021/06/Enjuague-bucal-Listerine-Cool-Mint-500-ml-.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Hilo Dental",28,2,
"https://www.farmaciasgrassi.com/media/catalog/product/cache/a0bccd643925e4c2e65271a502a51157/7/0/70942304542_6.png",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Agrifen",28,1,
"https://www.fahorro.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/7/5/7501125116810_3.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Brillantina-Cabello",18,2,
"https://farma-ahorro.com/wp-content/uploads/77-300x300.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Viagra",30,4,
"https://www.sanborns.com.mx/imagenes-sanborns-ii/1200/7501287688231.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Vitamina-C",32,5,
"https://www.fahorro.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/7/5/7506472802409_1.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Complejo B",34,4,
"https://www.costco.com.mx/medias/sys_master/products/h87/hbc/11030438871070.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Tribedoce",29,1,
"https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/7/9/792588-1_image.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Leche Nan",24,1,
"https://comercializadorajm.com/wp-content/uploads/2021/01/1098.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Papilla Gerber",25,5,
"https://cdn.shopify.com/s/files/1/0706/6309/products/mayoreototal-media-caja-papilla-gerber-2da-etapa-frutas-mixtas-de-113-grs-con-12-frascos-nestle-bebes-nestle-sku_1000x.jpg?v=1563807221",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Pañales para bebe",21,1,
"https://www.movil.farmaciasguadalajara.com/wcsstore/FGCAS/wcs/products/1296140_A_1280_AL.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Curitas Venditas",30,4,
"https://www.fahorro.com/media/catalog/product/cache/3fba745dcec88e97bfe808bedc471260/7/7/7702003469305_1_4.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Vaselina",20,3,
"https://m.media-amazon.com/images/I/61a0OSyvFDL._SY355_.jpg",6);
INSERT INTO tb_productos(nombre_p,precio,cantidad,imagen,id_categoria) VALUES("Careta",22,3,
"https://www.tudepositodental.com/img-2019/careta-principal-buena.jpg",6);


SELECT * FROM tb_categorias;
SELECT * FROM tb_productos;