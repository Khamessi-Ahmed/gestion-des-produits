<?php
ob_start();
echo "<h1>Détail du produit id: $produit[0] </h1>";
?>
<div class="row">
    <div class="col-3">
        <img src="<?= $produit[5] ?>" alt="">
    </div>
    <div class="col-3">
        <H3><?= $produit[1] ?> <?= $produit[2] ?>(DT)</H3>
        <h4>Categorie: <?= $categorie[1] ?></h4>
        <p><strong>Détail technique: </strong><?= $produit[4] ?></p>

        <a href="../controller/updateProduct.php?id=<?= $produit[0] ?>" class="btn btn-success">Edit</a>




    </div>
</div>
<?php
$contenu = ob_get_clean();
include "layout.php";
