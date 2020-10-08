<?php
    require_once 'Controller/ProductosController.php';
    require_once 'RouterClass.php';
    
    // CONSTANTES PARA RUTEO
    define("BASE_URL", 'http://'.$_SERVER["SERVER_NAME"].':'.$_SERVER["SERVER_PORT"].dirname($_SERVER["PHP_SELF"]).'/');

    $r = new Router();

    // rutas
    $r->addRoute("home", "GET", "ProductosController", "getProductos");

    //Esto lo veo en TasksView
    /*$r->addRoute("insert", "POST", "TasksController", "InsertTask");

    $r->addRoute("delete/:ID", "GET", "TasksController", "BorrarLaTaskQueVienePorParametro");
    $r->addRoute("completar/:ID", "GET", "TasksController", "MarkAsCompletedTask");
    $r->addRoute("edit/:ID", "GET", "TasksController", "EditTask");*/

    //Ruta por defecto.
    $r->setDefaultRoute("ProductosController", "getProductos");

    //run
    $r->route($_GET['action'], $_SERVER['REQUEST_METHOD']); 
?>