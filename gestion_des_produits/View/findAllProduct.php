<?php
ob_start();
echo "<h1>Liste des produits</h1>";

if (isset($_GET['etat'])) {
    $etat = $_GET['etat'];
    switch ($etat) {
        case '1':
            echo "<script>
            alert('le produit a été supprimé avec succées');</script>";
            break;
        case '2':
            echo "<script>alert('le produit a été modifié avec succées');</script>";
            break;
        case '3':
            echo "<script>alert('le produit a été inséré avec succées');</script>";
            break;
    }
}
?>
<table class="table" id="example">
    <thead>
        <tr class="table-success">
            <th>Identifiant</th>
            <th>Libellé</th>
            <th>Prix (DT)</th>
            <th>Quantité </th>
            <th>En Promo</th>
            <th>Catégorie</th>
            <th>Action</th>
            <th></th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <?php
        foreach ($LesProduits as $produit) {
            echo "<tr>
        <td>$produit[0]</td>
        <td>$produit[1]</td>
        <td>$produit[2]</td>
        <td>$produit[3]</td>
        <td>$produit[4]</td>
        <td>$produit[5]</td>
        <td><a href='../controller/deleteProduct.php?id=$produit[0]'>Supprimer</a></td>
        <td><a href='../controller/updateProduct.php?id=$produit[0]'>Edit</a></td>
        <td><a href='../controller/detailProduct.php?id=$produit[0]'>Voir détail...</a></td>
           </tr>";
        }

        echo "</tbody></table>";
        echo "<a href='../controller/addProduct.php' class='btn btn-primary btn-sm'>Ajouter un produit</a>";

        $contenu = ob_get_clean();
        include "layout.php";
