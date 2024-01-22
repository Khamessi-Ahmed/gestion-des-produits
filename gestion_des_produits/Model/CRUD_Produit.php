<?php
require_once "produit.php";
require_once "CRUD.php";

class CRUD_Produit extends CRUD
{
    protected $table = 'produit';

    function findAll_with_name_categorie()
    {
        $sql = "select p.id,p.libelle,p.prix,p.qte,p.promo,c.libelle
                from produit as p, categorie as c
                 where p.id_categorie=c.id ";
        $res = $this->pdo->query($sql);
        return $res->fetchAll(PDO::FETCH_NUM);
    }

    function add(produit $p)
    {
        $sql = "insert into produit values(null,'{$p->getLibelle()}',
                                                {$p->getPrix()},
                                                 {$p->getQte()},
                                                '{$p->getDesc()}',
                                                '{$p->getImage()}',
                                                {$p->getPromo()},
                                            {$p->getCategorie()->getId()})";
        $res = $this->pdo->exec($sql);
        return $res;
    }
    function update(produit $p)
    {
        $sql = "update produit set libelle='{$p->getLibelle()}',
                                  prix={$p->getPrix()},
                                  qte={$p->getQte()},
                                  description='{$p->getDesc()}',
                                  image='{$p->getImage()}',
                                  promo={$p->getPromo()},
                                  id_categorie={$p->getCategorie()->getId()}
    
                    where id={$p->getId()} ";
        $res = $this->pdo->exec($sql);
        return $res;
    }
}
