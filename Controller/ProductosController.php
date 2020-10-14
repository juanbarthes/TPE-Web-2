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

    public function getProductosCategoria($params)
    {
        $id = $params[":id"];
        $categorias = $this->controllerCategorias->getCategorias();
        if (isset($id) && $id != "") {
            $productos = $this->model->getProductosCategoria($id);
            $a = 0;
            while ($a < sizeof($productos)) {
                $id = $productos[$a]["categoria"];
                foreach ($categorias as $categoria) {
                    if ($categoria->id_categoria == $id) {
                        $productos[$a]["nombre_categoria"] = $categoria->nombre_categoria;
                    }
                }
                $a++;
            }
        }
        //Mostrar los productos por pantalla
        if ($this->checkLoggedIn()) {
            $this->view->showProductos($productos, "./templates/tablaProductosAdmin.tpl", "../");
        } else
            $this->view->showProductos($productos, "./templates/tablaProductos.tpl", "../");
    }

    public function getProductos() //Le pide al Model la lista productos y luego le pide al View que los muestre por pantalla
    {
        //Traer productos de la DB
        $productos = $this->model->getProductos();
        $categorias = $this->controllerCategorias->getCategorias();
        if (empty($categorias)) {
            $categorias = null;
        } else {
            $a = 0;
            while ($a < sizeof($productos)) {
                $id = $productos[$a]["categoria"];
                foreach ($categorias as $categoria) {
                    if ($categoria->id_categoria == $id) {
                        $productos[$a]["nombre_categoria"] = $categoria->nombre_categoria;
                    }
                }
                $a++;
            }
        }
        //Mostrar los productos por pantalla
        if ($this->checkLoggedIn()) {
            $this->view->showProductos($productos, "./templates/tablaProductosAdmin.tpl");
        } else
            $this->view->showProductos($productos, "./templates/tablaProductos.tpl");
    }

    public function getProducto($params) //Le pide al Model un producto y luego le pide al View que lo muestre por pantalla
    {
        $id = $params[":id"];
        if (isset($id) && $id != "") {
            $producto = $this->model->getProducto($id);
            $this->view->showProducto($producto, "../");
        }
    }

    public function insertProducto() //Le pide al Model que agregue un producto nuevo
    {
        $nombre = $_POST["nombre"];
        $descripcion = $_POST["descripcion"];
        $precio = $_POST["precio"];
        $stock = $_POST["stock"];
        $categoria = $_POST["categoria"];
        if (isset($nombre, $descripcion, $precio, $stock, $categoria)) {
            if ($stock == "") {
                $stock = 0;
            }
            if ($categoria == "") {
                $categoria = null;
            }
            $this->model->insertProducto($nombre, $descripcion, $precio, $stock, $categoria);
        }
        header(BASE_URL);
    }

    public function deleteProducto() //Le pide al Model que borre un producto
    {
        if ($this->checkLoggedIn()) {
            $id = $_GET["id_p"];
            if (isset($id) && $id != "") {
                $this->model->deleteProducto($id);
                header(BASE_URL);
            } else
                header(BASE_URL);
        }
    }

    public function updateProducto() //Le pide al Model que actualice un producto
    {
        $id = $_POST["id_p"];
        $nombre = $_POST["nombre"];
        $descripcion = $_POST["descripcion"];
        $precio = $_POST["precio"];
        $stock = $_POST["stock"];
        $categoria = $_POST["categoria"];
        $this->model->updateProducto($id, $nombre, $descripcion, $precio, $stock, $categoria);
        $this->getProductos();
    }

    public function formularioProducto()
    {
        if ($this->checkLoggedIn()) {
            $categorias = $this->controllerCategorias->getCategorias();
            if (!$categorias) { //Si no habia categorias creadas, agrega una generica y vuelve a hacer el get.
                $this->controllerCategorias->getModel()->insertCategoria("Ninguna");
                $categorias = $this->controllerCategorias->getCategorias();
            }
            if (isset($_GET["id_p"]) && $_GET["id_p"] != "") { //Si se llega al form a traves de un get con una id_p, hay que editar.
                $id = $_GET["id_p"];
                $action = "updateProducto";
                $producto = $this->model->getProducto(intval($id));
                $this->view->showFormularioProducto($producto, $action, $categorias);
            } else { //Como no se tiene la id_p, mostramos el form para insertar
                $action = "insertProducto";
                $producto = array("id" => "", "nombre" => "", "descripcion" => "", "precio" => "", "stock" => "", "categoria" => "");
                $this->view->showFormularioProducto($producto, $action, $categorias);
            }
        } else {
            header(LOGIN);
        }
    }

    private function checkLoggedIn() //Verifica si el usuario esta logueado. Deben llamarla todos los Controllers para cada accion que requiera permisos de usuario.
    {
        session_start();
        if (!empty($_SESSION["EMAIL"])) {
            return true;
        }
        return false;
    }
}
