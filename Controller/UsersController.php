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
        if ($this->checkLoggedIn()) {
            header(BASE_URL);
        }
        else
            $this->view->showLogin();
    }

    public function registro() //Formulario de registro
    {
        $this->view->showRegistro();
    }

    public function verifyUser()//Comprobacion de los datos del login del lado del servidor
    {
        //Verifica que los imput vengan correctamente cargados
        $user = $_POST["email"];
        $pass = $_POST["contraseña"];
        if (isset($user) && $user != "") {
            //Se trae al usuario desde la DB
            $dbUser = $this->model->getUser($user);
            if (isset($dbUser) && $dbUser) {
                
                if (password_verify($pass, $dbUser->password)) {
                    session_start();
                    $_SESSION["EMAIL"] = $dbUser->email;
                    header(BASE_URL);
                } else {
                    $mensaje = "Contraseña incorrecta";
                    $this->view->showLogin($mensaje);
                }
            } else {
                $mensaje = "Usuario incorrecto";
                $this->view->showLogin($mensaje);
            }
        } else {
            $mensaje = "Usuario y/o contraseña incorrectos";
            $this->view->showLogin($mensaje);
        }
    }

    public function verificarRegistro()
    {
        $email = $_POST["email"];
        $pass = $_POST["contraseña"];
        if (isset($email, $pass)) {
            if (($email != "") && ($pass != "")) {
                $encryptedPass = password_hash ($pass , PASSWORD_DEFAULT );
                $this->model->insertUser($email, $encryptedPass, 1);
                header(BASE_URL);
            } else {
                $this->view->showRegistro("Rellene correctamente todos los campos");
            }
        } else
            $this->view->showRegistro("Rellene correctamente todos los campos");
    }

    public function logout()//Termina la sesion
    {
        session_start();
        session_destroy();
        header(BASE_URL);
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
