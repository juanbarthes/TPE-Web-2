<?php
require_once "./libs/smarty/Smarty.class.php";
class UsersView
{
    private $title;
    private $smarty;

    public function __construct()
    {
        $this->title = "Login";
        $this->smarty = new Smarty();
        $this->smarty->assign("titulo", $this->title);
    }

   public function showLogin($mensaje = "")
   {
       $this->smarty->assign("mensaje", $mensaje);
       $this->smarty->display("./templates/login.tpl");
   }

   function ShowHomeLocation(){
    header("Location: ".BASE_URL."home");
}
}