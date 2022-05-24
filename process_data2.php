<?php

if (isset($_GET['cat'])) {
    $connect = new PDO("mysql:host=localhost;dbname=exoajax", "root", "");
    $data = array();
    $cat = htmlspecialchars($_GET['cat']);
    $query = "SELECT title FROM movies JOIN categories WHERE categories.categ_id = movies.fk_categ AND categories.category = '$cat' ;";
    $result = $connect->query($query);

    foreach ($result as $row) {
        $data[] = array(
            'title' =>  $row["title"]
        );
    }

    echo json_encode($data);
}
