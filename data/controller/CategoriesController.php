<?php

require_once '../class/Categories.php';

$c = new Categories();
$res = $c->getCategory();
foreach ($res as $row) {
    $data[] = array(
        'title' => $row["category"]
    );
}
echo json_encode($data);
