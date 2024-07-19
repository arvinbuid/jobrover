<?php

$config = require basePath('config/db.php');
$db = new Database($config);

// Get job listing id
$id = $_GET['id'];

$params = [
  'id' => $id,
];

$listing = $db
  ->query('SELECT * FROM listings WHERE id = :id', $params)
  ->fetch();

loadView('listings/show', [
  'listing' => $listing,
]);
