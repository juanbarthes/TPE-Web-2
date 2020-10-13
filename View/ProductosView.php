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

    public function showProductos($productos, $rutaTemplate, $prefijo = "./")
    {
        $this->smarty->assign("productos", $productos);
        $this->smarty->assign("prefijo", $prefijo);
        $this->smarty->display($rutaTemplate);
    }

    public function showProducto($producto, $prefijo)
    {
        $this->smarty->assign("producto", $producto);
        $this->smarty->assign("prefijo", $prefijo);
        $this->smarty->display("./templates/producto.tpl");
    }

    function ShowHomeLocation(){
        header("Location: ".BASE_URL."home");
    }

    public function showFormularioProducto($producto, $action, $categorias, $prefijo = "./")
    {
        $this->smarty->assign("prefijo", $prefijo);
        $this->smarty->assign("producto", $producto);
        $this->smarty->assign("action", $action);
        $this->smarty->assign("categorias", $categorias);
        $this->smarty->display("./templates/formularioProductos.tpl");
    }

}
