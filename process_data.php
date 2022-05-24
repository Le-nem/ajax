<?php

//process_data.php

$connect = new PDO("mysql:host=localhost;dbname=exoajax", "root", "");

if (isset($_POST["query"])) {

	$data = array();

	$condition = preg_replace('/[^A-Za-z0-9\- ]/', '', $_POST["query"]);

	$query = "
	SELECT title FROM movies
		WHERE title LIKE '%" . $condition . "%' 
	";

	$result = $connect->query($query);

	$replace_string = '<b>' . $condition . '</b>';

	foreach ($result as $row) {
		$data[] = array(
			'title'		=>	str_ireplace($condition, $replace_string, $row["title"])
		);
	}

	echo json_encode($data);
}



if (isset($post_data['action'])) {
	if ($post_data['action'] == 'fetch') {
		$query = "SELECT * FROM recent_search ORDER BY search_id DESC LIMIT 10";

		$result = $connect->query($query);

		$data = array();

		foreach ($result as $row) {

			$data[] = array(
				'id_movie'				=>	$row['id_movie'],
				'title'		=>	$row["title"]
			);
		}

		echo json_encode($data);
	}
}
