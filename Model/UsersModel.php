<?php
class UsersModel
{
    private $db;

    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=productos;charset=utf8', 'root', '');
    }

    public function getUsers()//Obtiene todos los usuarios de la DB
    {
        $sentencia = $this->db->prepare("SELECT * FROM usuario");
        $sentencia->execute();
        return $sentencia->fetchAll(PDO::FETCH_OBJ);
    }

    public function getUser($email)//Obtiene un usuario solicitado de la DB
    {
        $sentencia = $this->db->prepare("SELECT * FROM usuario WHERE email=?");
        $sentencia->execute(array($email));
        return $sentencia->fetch(PDO::FETCH_OBJ);
    }

    public function insertUser($email, $contraseña, $admin)//Agrega un usuario a la DB
    {
        $sentencia = $this->db->prepare("INSERT INTO usuario(email, password) VALUES(?,?)");
        $sentencia->execute(array($email, $contraseña));
    }
}

