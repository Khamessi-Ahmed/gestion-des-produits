<?php
require_once "CRUD.php";
require_once "categorie.php";
require_once "../config/connexion.php";

class CRUD_Categorie extends CRUD
{
    protected $table = 'categorie';


    function add(categorie $c)
    {
        $sql = "insert into categorie values(null,'{$c->getLibelle()}')";
        $res = $this->pdo->exec($sql);
        return $res;
    }
    function update(categorie $c)
    {
        $sql = "update categorie set  libelle='{$c->getLibelle()}' where id ={$c->getId()}) ";
        $res = $this->pdo->exec($sql);
        return $res;
    }
}
