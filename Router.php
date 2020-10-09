<?php
    require_once 'Controller/ProductosController.php';
    require_once "Controller/CategoriasController.php";
    require_once 'RouterClass.php';
    
    // CONSTANTES PARA RUTEO
    define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');

    $r = new Router();

    // rutas
    $r->addRoute("home", "GET", "CategoriasController", "home");
    $r->addRoute("formularioCategoria", "GET", "CategoriasController", "formularioCategoria");
    $r->addRoute("insertCategoria", "POST", "CategoriasController", "insertCategoria");
    $r->addRoute("updateCategoria", "POST", "CategoriasController", "updateCategoria");

    //Ruta por defecto.
    $r->setDefaultRoute("CategoriasController", "home");

    //run
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 
?>