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
        if ($this->checkLoggedIn()) {
            $this->view->showHome($categorias, "./templates/homeAdmin.tpl");
        } else
            $this->view->showHome($categorias, "./templates/home.tpl");
    }

    public function getModel()
    {
        return $this->model;
    }

    public function getCategorias()
    {
        return $this->model->getCategorias();
    }

    public function insertCategoria() //Le pide al Model que agregue un producto nuevo
    {
        if (isset($_POST["nombre"]) && $_POST["nombre"] != "") {
            $this->model->insertCategoria($_POST["nombre"]);
            header(BASE_URL);
        }
    }

    public function deleteCategoria($params = null) //Le pide al Model que borre un producto
    {
        if ($this->checkLoggedIn()) {
            $id = $params[":id"];
            if (isset($id) && $id != "") {
                $this->model->deleteCategoria($id);
            }
        }
        header(BASE_URL);
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
        header(BASE_URL);
    }

    public function formularioCategoria()
    {
        if ($this->checkLoggedIn()) {
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
        } else {
            header(LOGIN);
        }
    }

    private function checkLoggedIn() //Verifica si el usuario esta logueado. Deben llamarla todos los Controllers para cada accion que requiera permisos de usuario.
    {
        if (session_status() == PHP_SESSION_NONE) { //para evitar que se llame varias veces a session_start() wn un mismo flujo
            session_start();
            if (!empty($_SESSION["EMAIL"])) {
                return true;
            }
        }

        return false;
    }

    public function getProductosPorCategoria($id)
    {
    }
}
