<?php

require_once '../class/Movies.php';


$cat = htmlspecialchars($_GET['cat']);
$m = new Movies();
$res = $m->getMoviesByCategories($cat);
foreach ($res as $row) {
    $data[] = array(
        'title' =>  $row["title"]
    );
}
echo json_encode($data);
