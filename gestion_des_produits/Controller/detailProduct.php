
<?php
require_once "../Model/CRUD_Produit.php";
require_once "../Model/CRUD_Categorie.php";
$crud_prod = new CRUD_Produit();
$crud_cat = new CRUD_Categorie();
$id = $_GET['id'];
$produit = $crud_prod->find($id);
$id_categorie = $produit[7];
$categorie = $crud_cat->find($id_categorie);
include "../view/detailProduct.php";
