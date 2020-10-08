<?php
require_once './Model/ProductosModel.php';
require_once './View/ProductosView.php';

class ProductosController
{
    private $model;
    private $view;

    public function __construct()
    {
        $this->model = new ProductosModel();
        $this->view = new ProductosView();
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
            ($nombre = $_POST["nombre"]) && ($categoria ? $_POST["categoria"]);
            $descripcion = $_POST["descripcion"];
            $precio = $_POST["precio"];
            $stock = $_POST["stock"];
            $categoria = $_POST["categoria"];
            if (($nombre != "") && ($descripcion != "") && ($precio != "") && ($categoria != "")) {
                if(isset($stock)){
                    $this->model->insertProducto($nombre, $descripcion, $precio, $stock, $categoria);
                }
                else{
                    $this->model->insertProducto($nombre, $descripcion, $precio, 0, $categoria);
                }
            }
        }
    }

    public function deleteProducto()//Le pide al Model que borre un producto
    {
        $id = $_POST["id"];
        if (isset($id) && $id != "") {
            $this->model->deleteProducto($id);
        }
    }

    public function updateProducto()//Le pide al Model que actualice un producto
    {
        
    }

}
