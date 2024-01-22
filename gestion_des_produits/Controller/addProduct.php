<?php
require_once "../Model/CRUD_Categorie.php";
require_once "../Model/CRUD_Produit.php";
$crud_prod = new CRUD_Produit;
$crud_cat = new CRUD_Categorie();
// si les données du formulaire  ont  été saisies on les reçoit via post
if (isset($_POST['ok'])) {
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
    //maintenant on construit l'objet categorie
    $objet = new categorie();
    $objet->setId($cat[0]);
    $objet->setLibelle($cat[1]);

    //construction de nouvel objet produit
    $p = new produit(null, $libelle, $pu, $qte, $desc, $image, $promo, $objet);
    //var_dump($p);
    //ajout du produit 
    $res = $crud_prod->add($p);
    if ($res) {
        // affichage de la  liste des produits avec le produit inséré
        header("location:findAllProduct.php?etat=3");
        exit;
    }
}
// sinon il s'agit de la première url reçue alors on affiche le 
// formulaire  vide avec une liste déroulante contenant la liste des
//catégories
$LesCategories = $crud_cat->findAll();
require "../View/addProduct.php";


