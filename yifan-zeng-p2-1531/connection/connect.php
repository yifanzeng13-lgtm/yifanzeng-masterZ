<?php
//connect database to php

$dsn = "mysql:host=localhost:3306(MariaDB);dbname=zeng_final_1531"; // 'dsn' stands for data source name
$username = "zeng0059";
$password = "Zbanmian";

//PDO represents a connection between PHP and a database server.
try {
   $pdo = new PDO($dsn, $username, $password);
} catch (PDOException $err) {
   echo '<p><mark>' . $err->getMessage() . '</mark></p>'; //-> means extend
}

// once you don't need the connection any more, close the connection once you don't need it:
// $pdo = NULL;
?>
