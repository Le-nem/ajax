<?php

require_once 'Connect.php';

class Categories
{

    private $id;
    private $category;
    private $createdAt;

    public function __construct()
    {
    }

    public function getId()
    {
        $this->id = Connect::co();
        return $this->id->query('SELECT categ_id FROM categories');
    }
    public function getCategory()
    {
        $this->category = Connect::co();
        return $this->category->query('SELECT category FROM categories');
    }
    public function getCreatedAt()
    {
        $this->createdAt = Connect::co();
        return $this->createdAt->query('SELECT created_at FROM categories');
    }
}
