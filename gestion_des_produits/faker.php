<?php
require_once "config/connexion.php";
$objet = new connexion();
$connexion = $objet->getConnexion();

for ($i = 1; $i <= 100; $i++) {
    $libelle = "Produit n°$i";
    $prix = random_int(100, 3000);
    $qte = random_int(1, 100);
    $desc = "Lorem ipsum 
        dolor sit, amet consectetur adipisicing elit. 
        Consequatur fugiat id, officiis illo quaerat magnam sit 
        unde obcaecati explicabo. Aliquam exercitationem molestias
        asperiores ipsum illum assumenda soluta molestiae deleniti fugiat.";
    $image = "https://picsum.photos/300/?random=$i";
    $promo = random_int(0, 1);
    $id_cat = random_int(1, 4);
    $sql = "insert into produit values(null,'$libelle',$prix,$qte,'$desc',
            '$image',$promo,$id_cat)";
    $res = $connexion->exec($sql);
}
header("location:controller/findAllProduct.php");
