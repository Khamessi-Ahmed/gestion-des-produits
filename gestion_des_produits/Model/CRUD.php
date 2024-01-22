<?php
require_once "../config/connexion.php";
abstract class CRUD
{
    protected $pdo;
    protected $table;
    public function __construct()
    {
        $obj = new connexion();
        $this->pdo = $obj->getConnexion();
    }
    function find($id)
    {
        $sql = "select * from {$this->table} where id=$id";
        $res = $this->pdo->query($sql);
        return $res->fetch(PDO::FETCH_NUM);
    }
    function findAll()
    {
        $sql = "select * from {$this->table}";
        $res = $this->pdo->query($sql);
        return $res->fetchAll(PDO::FETCH_NUM);
    }
    function delete($id)
    {
        $sql = "delete from {$this->table} where id=$id";
        $res = $this->pdo->exec($sql);
        return $res;
    }
}
      // $obj=new CRUD(); erreur  