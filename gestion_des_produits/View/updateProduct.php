<?php
ob_start();
echo "<h1>Mettre à jour un produit</h1>";
?>
<form action="../Controller/updateProduct.php" method="post">
    Identifiant: <input type="text" name="id" value="<?= $produit[0] ?>" id="" readonly></br>
    Libellé: <input type="text" name="libelle" value="<?= $produit[1] ?>"></br>
    Prix: <input type="text" name="prix" value="<?= $produit[2] ?>"></br>
    Quantité: <input type="text" name="qte" value="<?= $produit[3] ?>"></br>
    Description: <br><textarea name="desc" id="" cols="50" rows="10"> <?= $produit[4] ?></textarea></br>
    Image<input type="text" name="image" value="<?= $produit[5] ?>"></br>
    promo: <input type="text" name="promo" value="<?= $produit[6] ?>">
    </textarea>
    catégorie:
    <select name="cat" id="">
        <option value="<?= $categorie[0] ?>">-- <?= $categorie[1] ?>-- </option>
        <?php foreach ($LesCategories as $cat) {
            echo "<option value=$cat[0]>$cat[1]</option>";
        } ?>
    </select></br>
    <input type="submit" value="Edit" name="ok">
</form>
<?php
$contenu = ob_get_clean();
include "layout.php";
