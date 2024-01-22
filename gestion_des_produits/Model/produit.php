<?php
require_once "categorie.php";
class produit
{
    private $id;
    private $libelle;
    private $prix;
    private $qte;
    private $desc;
    private $image;
    private $promo;
    private $categorie; // objet categorie
    function __construct($id, $l, $p, $q, $d, $i, $pr, categorie $cat)
    {
        $this->id = $id;
        $this->libelle = $l;
        $this->prix = $p;
        $this->qte = $q;
        $this->desc = $d;
        $this->image = $i;
        $this->promo = $pr;
        $this->categorie = $cat;
    }
    /**
     * Get the value of id
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     */
    public function setId($id): self
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of libelle
     */
    public function getLibelle()
    {
        return $this->libelle;
    }

    /**
     * Set the value of libelle
     */
    public function setLibelle($libelle): self
    {
        $this->libelle = $libelle;

        return $this;
    }

    /**
     * Get the value of prix
     */
    public function getPrix()
    {
        return $this->prix;
    }

    /**
     * Set the value of prix
     */
    public function setPrix($prix): self
    {
        $this->prix = $prix;

        return $this;
    }

    /**
     * Get the value of qte
     */
    public function getQte()
    {
        return $this->qte;
    }

    /**
     * Set the value of qte
     */
    public function setQte($qte): self
    {
        $this->qte = $qte;

        return $this;
    }

    /**
     * Get the value of desc
     */
    public function getDesc()
    {
        return $this->desc;
    }

    /**
     * Set the value of desc
     */
    public function setDesc($desc): self
    {
        $this->desc = $desc;

        return $this;
    }

    /**
     * Get the value of image
     */
    public function getImage()
    {
        return $this->image;
    }

    /**
     * Set the value of image
     */
    public function setImage($image): self
    {
        $this->image = $image;

        return $this;
    }

    /**
     * Get the value of promo
     */
    public function getPromo()
    {
        return $this->promo;
    }

    /**
     * Set the value of promo
     */
    public function setPromo($promo): self
    {
        $this->promo = $promo;

        return $this;
    }

    /**
     * Get the value of categorie
     */
    public function getCategorie(): categorie
    {
        return $this->categorie;
    }

    /**
     * Set the value of categorie
     */
    public function setCategorie(categorie $categorie): self
    {
        $this->categorie = $categorie;

        return $this;
    }
}
