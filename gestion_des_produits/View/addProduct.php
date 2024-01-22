
<?php

ob_start();
echo "<h1>Ajout d'un nouveau produit</h1>";
?>
<form action="../Controller/addProduct.php" method="post">
    Libellé: <input type="text" name="libelle"></br>
    Prix: <input type="text" name="prix"></br>
    Quantité: <input type="text" name="qte"></br>
    Description: <br><textarea name="desc" id="" cols="50" rows="10"> </textarea></br>
    Image<input type="text" name="image"></br>
    promo: <input type="text" name="promo">
    </textarea>
    catégorie:
    <select name="cat" id="">
        <?php foreach ($LesCategories as $cat) {
            echo "<option value=$cat[0]>$cat[1]</option>";
        } ?>
    </select></br>
    <input type="submit" value="Edit" name="ok">
</form>
<?php
$contenu = ob_get_clean();
include "layout.php";

