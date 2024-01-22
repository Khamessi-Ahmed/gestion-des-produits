<?php
require_once "../Model/CRUD_Produit.php";
$crud = new CRUD_Produit();
$id = $_GET['id'];
$res = $crud->delete($id);
header("location:findAllProduct.php?etat=1");
