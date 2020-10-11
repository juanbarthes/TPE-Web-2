<?php
    require_once 'RouterClass.php';
    require_once 'Controller/ProductosController.php';
    require_once "Controller/CategoriasController.php";
    require_once "Controller/UsersController.php";
    
    // CONSTANTES PARA RUTEO
    define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');
    define("LOGIN", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/login');
    define("LOGOUT", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/logout');

    $r = new Router();

    // rutas
    //Categorias
    $r->addRoute("home", "GET", "CategoriasController", "home");
    $r->addRoute("formularioCategoria", "GET", "CategoriasController", "formularioCategoria");
    $r->addRoute("insertCategoria", "POST", "CategoriasController", "insertCategoria");
    $r->addRoute("updateCategoria", "POST", "CategoriasController", "updateCategoria");
    //Producto
    $r->addRoute("productos", "GET", "ProductosController", "getProductos");
    $r->addRoute("producto", "GET", "ProductosController", "getProducto");
    $r->addRoute("insertProducto", "POST", "ProductosController", "insertProducto");
    $r->addRoute("updateProducto", "POST", "ProductosController", "updateProducto");
    $r->addRoute("formularioProducto", "GET", "ProductosController", "formularioProducto");

    //Usuario
    $r->addRoute("login", "GET", "UsersController", "login");
    $r->addRoute("verificarusuario", "POST", "UsersController", "verifyUser");

    //Ruta por defecto.
    $r->setDefaultRoute("CategoriasController", "home");

    //run
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 
?>