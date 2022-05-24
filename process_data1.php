<?php


$connect = new PDO("mysql:host=localhost;dbname=exoajax", "root", "");
$data = array();
$query = "SELECT category FROM categories";
$result = $connect->query($query);


foreach ($result as $row) {
    $data[] = array(
        'title'        =>    $row["category"]
    );
}

echo json_encode($data);
