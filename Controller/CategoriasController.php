<?php
require_once './Model/CategoriasModel.php';
require_once './View/CategoriasView.php';

class CategoriasController
{
    private $model;
    private $view;

    public function __construct()
    {
        $this->model = new CategoriasModel();
        $this->view = new CategoriasView();
    }

    public function home() //Le pide al Model la lista Categorias y luego le pide al View que los muestre por pantalla
    {
        //Traer Categorias de la DB
        $categorias = $this->model->getCategorias();
        //Mostrar los productos por pantalla
        $this->view->showHome($categorias);
    }

    public function insertCategoria() //Le pide al Model que agregue un producto nuevo
    {
        if (isset($_POST["nombre"]) && $_POST["nombre"] != "") {
            $this->model->insertCategoria($_POST["nombre"]);
            $this->view->showHomeLocation();
        }
    }

    public function deleteCategoria() //Le pide al Model que borre un producto
    {
        $id = $_GET["id"];
        if (isset($id) && $id != "") {
            $this->model->deleteCategoria($id);
        }
        $this->home();
    }

    public function updateCategoria() //Le pide al Model que actualice un producto
    {
        $id = $_POST["id"];
        $nombre = $_POST["nombre"];
        if (isset($id) && $id != "") {
            if (isset($nombre) && $nombre != "") {
                $this->model->updateCategoria($id, $nombre);
            }
        }
        $this->view->ShowHomeLocation();
    }

    public function formularioCategoria()
    {
        if (isset($_GET["id_c"]) && $_GET["id_c"] != "") {
            $id = $_GET["id_c"];
            $action = "updateCategoria";
            $categoria = $this->model->getCategoria(intval($id));
            $this->view->showFormularioCategoria($categoria, $action);
        } else {
            $action = "insertCategoria";
            $categoria = array("id_categoria" => "", "nombre_categoria" => "");
            $this->view->showFormularioCategoria($categoria, $action);
        }
    }
}
