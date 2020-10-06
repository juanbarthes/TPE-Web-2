<?php
class ProductosModel
{
    private $db;

    public function __construct()
    {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=productos;charset=utf8', 'root', '');
    }

    public function getProductos(Type $var = null)//Obtiene los productos de la DB
    {
        $sentencia = $this->db->prepare("SELECT * FROM producto");
        $sentencia->execute();
        return $sentencia->fetchAll(PDO::FETCH_OBJ);
    }

    public function getProducto($id)//Obtiene un producto solicitado de la DB
    {
        $sentencia = $this->db->prepare("SELECT * FROM producto WHERE id=?");
        $sentencia->execute(array($id));
        return $sentencia->fetch(PDO::FETCH_OBJ);
    }

    public function insertProducto($nombre, $descripcion, $precio, $stock)//Agrega un producto a la DB
    {
        $sentencia = $this->db->prepare("INSERT INTO producto(nombre, descripcion. precio, stock) VALUES(?,?,?,?)");
        $sentencia->execute(array($nombre, $descripcion, $precio, $stock));
    }

    public function deleteProducto($id)//Borra un producto de la DB
    {
       $sentencia = $this->db->prepare("DELETE FROM producto WHERE id=?");
       $sentencia->execute(array($id)); 
    }

    public function updateProducto($id, $nombre, $descripcion, $precio, $stock)//Actualiza los datos de un producto de la DB
    {
        $sentencia = $this->db->prepare("UPDATE producto SET nombre=?, descripcion=?, precio=?, stock=? WHERE id=?");
        $sentencia->execute(array($nombre, $descripcion, $precio, $stock, $id));
    }
}
