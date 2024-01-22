<?php
ob_start();
echo "<h1>Bienvenue sur notre Site </h1>";
echo "Lorem ipsum dolor sit amet consectetur adipisicing
 elit. Architecto maiores, repellendus est ratione magnam autem.
  Repellendus maxime ullam ut ab esse nemo enim fugit, beatae,
   tenetur voluptatem nihil, nulla est.";
$contenu = ob_get_clean();
include "view/layout.php";
