<?php

require ('conf.php');
go_home();

try {
    $conn = new PDO("mysql:host=$server;dbname=test", $user, $passw);
    $conn -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "<p>PDO ühedus on olemas</p>";
}
catch(PDOException $err) {
    echo "PDO-ga on halvasti:".$err -> getMessage();
}
$conn = null;

?>