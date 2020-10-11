<?php
require_once "./libs/smarty/Smarty.class.php";
class ProductosView
{
    private $title;
    private $smarty;

    public function __construct()
    {
        $this->title = "EXA-Gamer";
        $this->smarty = new Smarty();
        $this->smarty->assign("titulo", $this->title);
    }

    public function showHome($productos)
    {
        $this->smarty->assign("productos", $productos);
        $this->smarty->display("./templates/tablaProductos.tpl");
    }

    public function showProducto($producto)
    {
        # code...
    }

    function ShowHomeLocation(){
        header("Location: ".BASE_URL."home");
    }

    public function showFormularioProducto($producto, $action, $categorias)
    {
        $this->smarty->assign("producto", $producto);
        $this->smarty->assign("action", $action);
        $this->smarty->assign("categorias", $categorias);
        $this->smarty->display("./templates/formularioProductos.tpl");
    }

}
