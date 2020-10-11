<?php
require_once './Model/ProductosModel.php';
require_once './View/ProductosView.php';
require_once './Controller/CategoriasController.php';

class ProductosController
{
    private $model;
    private $view;
    private $controllerCategorias;

    public function __construct()
    {
        $this->model = new ProductosModel();
        $this->view = new ProductosView();
        $this->controllerCategorias = new CategoriasController();
    }

    public function getProductos()//Le pide al Model la lista productos y luego le pide al View que los muestre por pantalla
    {
        //Traer productos de la DB
        $productos = $this->model->getProductos();
        //Mostrar los productos por pantalla
        $this->view->showHome($productos);
    }

    public function getProducto()//Le pide al Model un producto y luego le pide al View que lo muestre por pantalla
    {
        
    }

    public function insertProducto()//Le pide al Model que agregue un producto nuevo
    {
        if (isset($_POST["nombre"]) && isset($_POST["descripcion"]) && isset($_POST["precio"])) {
            $nombre = $_POST["nombre"];
            $descripcion = $_POST["descripcion"];
            $precio = $_POST["precio"];
            $stock = $_POST["stock"];
            $categoria = $_POST["categoria"];
            if ((!isset($stock)) || ($stock == "")) {
                $stock = 0;
            }
            if ((!isset($categoria)) || ($categoria == "")) {
                $categoria = "No asignada";
            }
            $this->model->insertProducto($nombre, $descripcion, $precio, $stock, $categoria);
        }
    }

    public function deleteProducto()//Le pide al Model que borre un producto
    {
        $this->checkLoggedIn();//Si no esta logueado me manda al Login
        $id = $_POST["id"];
        if (isset($id) && $id != "") {
            $this->model->deleteProducto($id);
        }
    }

    public function updateProducto()//Le pide al Model que actualice un producto
    {
        
    }

    public function formularioProducto()
    {
        //$this->checkLoggedIn();//Si no esta logueado lo manda al login
        $categorias = $this->controllerCategorias->getCategorias();
        if (!$categorias) {//Si no habia categorias creadas, agrega una generica y vuelve a hacer el get.
            $this->controllerCategorias->getModel()->insertCategoria("Ninguna");
            $categorias = $this->controllerCategorias->getCategorias();
        }
        if (isset($_GET["id_p"]) && $_GET["id_p"] != "") {//Si se llega al form a traves de un get con una id_p, hay que editar.
            $id = $_GET["id_p"];
            $action = "updateProducto";
            $producto = $this->model->getProducto(intval($id));
            $this->view->showFormularioProducto($producto, $action, $categorias);
        } else {//Como no se tiene la id_p, mostramos el form para insertar
            $action = "insertProducto";
            $producto = array("id" => "", "nombre" => "", "descripcion" => "", "precio" => "", "stock" => "", "categoria" => "");
            $this->view->showFormularioProducto($producto, $action, $categorias);
        }
    }

    private function checkLoggedIn()//Verifica si el usuario esta logueado. Deben llamarla todos los Controllers para cada accion que requiera permisos de usuario.
    {
        session_start();
        if (!isset($_SESSION["EMAIL"])) {
            header("Location" . LOGIN. "login");
            die();
        }
    }

}
