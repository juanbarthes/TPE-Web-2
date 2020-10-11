<?php
require_once "./Model/UsersModel.php";
require_once "./View/UsersView.php";

class UsersController
{
    private $model;
    private $view;
    public function __construct()
    {
        $this->model = new UsersModel();
        $this->view = new UsersView();
    }

    public function login()
    {
        $this->view->showLogin();
    }

    public function verifyUser()
    {
        $user = $_POST["email"];
        $pass = $_POST["contraseña"];
        if (isset($user) && $user != "") {
            $dbUser = $this->model->getUser($user);
            if (isset($dbUser) && $dbUser) {
                if (password_verify($dbUser->password, $pass)) {
                    session_start();
                    $_SESSION["EMAIL"] = $dbUser->email;
                    $this->view->showHomeLocation();
                } else {
                    $mensaje = "Contraseña incorrecta";
                    $this->view->showLogin($mensaje);
                }
            }
            else {
                $mensaje = "Usuario incorrecto";
                $this->view->showLogin($mensaje);
            }
        }
        else {
            $mensaje = "Usuario y/o contraseña incorrectos";
            $this->view->showLogin($mensaje);
        }
    }

    public function logout()
    {
        session_start();
        session_destroy();
        header("Location" . LOGIN);
    }
}
