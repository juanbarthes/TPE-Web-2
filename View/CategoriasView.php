<?php
require_once "./libs/smarty/Smarty.class.php";
class CategoriasView
{
    private $title;
    private $smarty;

    public function __construct()
    {
        $this->title = "EXA-Gamer";
        $this->smarty = new Smarty();
        $this->smarty->assign("titulo", $this->title);
    }

    public function showHome($categorias, $templateLink, $prefijo = "./")
    {
        $this->smarty->assign("categorias", $categorias);
        $this->smarty->assign("prefijo", $prefijo);
        $this->smarty->display($templateLink);
    }

    function ShowHomeLocation(){
        header("Location: ".BASE_URL."home");
    }

    public function showFormularioCategoria($categorias = null, $action, $prefijo = "./")
    {
        $this->smarty->assign("categoria", $categorias);
        $this->smarty->assign("prefijo", $prefijo);
        $this->smarty->assign("action", $action);
        $this->smarty->display("./templates/formularioCategorias.tpl");
    }

}
