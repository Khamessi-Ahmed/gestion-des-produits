<?php
require_once "../Model/CRUD_Categorie.php";
require_once "../Model/CRUD_Produit.php";
$crud_prod = new CRUD_Produit;
$crud_cat = new CRUD_Categorie();
// les données du formulaire  ont  été modifé on reçoit via post
//les nouvelles données  
if (isset($_POST['ok'])) {
    $id = $_POST['id'];
    $libelle = $_POST['libelle'];
    $pu = $_POST['prix'];
    $qte = $_POST['qte'];
    $desc = $_POST['desc'];
    $promo = $_POST['promo'];
    $image = $_POST['image'];
    $id_cat = $_POST['cat'];
    //création de l'objet categorie

    $cat = $crud_cat->find($id_cat); //$cat est une ligne categorie de type
    // array de deux cases  o=>id et 1=>libelle
    //construction d'un objet categorie
    $objet = new categorie();
    $objet->setId($cat[0]);
    $objet->setLibelle($cat[1]);

    //construction de nouvel objet produit
    $p = new produit($id, $libelle, $pu, $qte, $desc, $image, $promo, $objet);
    //mettre à jour 
    $res = $crud_prod->update($p);
    if ($res) { // affichage de la  liste des produits avec le produit modifié
        header("location:findAllProduct.php?etat=2");
        exit;
    }
}
// sinon il s'agit de la première url reçue, alors  on affiche le 
// formulaire avec les anciennes valeurs
$id = $_GET['id'];
$produit = $crud_prod->find($id);
$id_categorie = $produit[7];
$categorie = $crud_cat->find($id_categorie);
$LesCategories = $crud_cat->findAll();

include "../view/updateProduct.php";
