<?php
require_once "../Model/CRUD_Produit.php";
$crud = new CRUD_Produit();
$LesProduits = $crud->findAll_with_name_categorie();
//var_dump($LesProduits);
include "../View/findAllProduct.php";
