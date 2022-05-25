<?php

require_once 'Connect.php';

class Movies
{

    private $mbc;

    public function getMoviesByCategories($cat)
    {
        $this->mbc = Connect::co();
        return $this->mbc->query("SELECT title FROM movies JOIN categories WHERE categories.categ_id = movies.fk_categ AND categories.category = '$cat' ;");
    }
}
