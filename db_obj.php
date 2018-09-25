<?php

require ('conf.php');
go_home();

$conn = new mysqli($server, $user, $passw);

if($conn -> connect_error) {
    die("Ühendusega on halvasti ".$conn -> connect_error);
}
echo "<p>Ühendus objektiga on olemas</p>";

$conn -> close();

?>