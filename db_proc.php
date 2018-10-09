<?php

require ('conf.php');
go_home();

// ühenduse tegemine protseduuriga.

$conn = mysqli_connect($server, $user, $passw);

if(!$conn) {
    die("Ühendusega on halvasti ".mysqli_connect_error);
}
echo "<p>Ühendus protseduuriga on olemas</p>";


// funktsioon kirje lisamiseks
function write_record($conn) {
    $sql_write = "INSERT INTO ms17.nimekiri (Eesnimi, Perenimi, id_code) VALUES ('Endel', 'Eesvärav', '12345678912')";

    if(mysqli_query($conn, $sql_write)) {
        echo "<p>Kirje lisamine õnnestus!</p>";
    }
    else {
        echo "<p>Viga: ".mysqli_error($conn)."</p>"; 
    }
    mysqli_close($conn);
}

// kirje lisamine andmebaasi
function write_button($conn) {
    echo "<input type='submit' name='insert_record' value='sisesta kirje'>";
    if(isset($_POST['insert_record'])) {
        write_record($conn);
    }
}
 

function show_all($conn) {
    $sql_select_all = "SELECT * FROM ms17.nimekiri";
    $result = mysqli_query($conn, $sql_select_all);

    if(mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            echo "<p>id: ".$row["id"].
            " Eesnimi: ".$row["Eesnimi"].
            " Perenimi: ".$row["Perenimi"].
            " Isikukood: ".$row["id_code"].
            " Sisestusaeg: ".$row["time"]."</p>";
        }
    }
    else {
        echo "tabel on tühi";
    }
    mysqli_close($conn);
}



// kõigi kirjete näitamine vajutades nupule
function show_all_button($conn) {
    echo "<input type='submit' name='show_all' value='näita kõiki kirjeid'>";
        if(isset($_POST['show_all'])) {
            show_all($conn);
    }
}

// konkreetse kirja otsimine
function search_by($conn) {
    $sql_select_all = "SELECT * FROM ms17.nimekiri WHERE Eesnimi = '".$_GET["id"]."'";
    $result = mysqli_query($conn, $sql_select_all);

    if(mysqli_num_rows($result) > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            echo "<p>id: ".$row["id"].
            " Eesnimi: ".$row["Eesnimi"].
            " Perenimi: ".$row["Perenimi"].
            " Isikukood: ".$row["id_code"].
            " Sisestusaeg: ".$row["time"]."</p>";
        }
    }
    else {
        echo "sellist kirjet ei ole";
    }
    mysqli_close($conn);
}

// kirje otsimise nupp 
function search_by_button($conn) {
    echo "<input type='submit' name='search_by' value='näita ühte kirjet'>";
        if(isset($_GET['search_by'])) {
            search_by($conn);
            var_dump($_GET);
    }
}


function delete_record($conn) {
    $sql_delete = "SELECT * FROM ms17.nimekiri WHERE Eesnimi = '".$_GET["id"]."'";

    if(mysqli_query($conn, $sql_delete)) {
        echo "<p>Kirje kustutamine õnnestus!</p>";
    }
    else {
        echo "<p>Viga: ".mysqli_error($conn)."</p>"; 
    }
    mysqli_close($conn);
}


function delete_button($conn) {
    echo "<input type='submit' name='delete_record' value='kustuta kirje'>";
    if(isset($_POST['delete_record'])) {
        delete_record($conn);
    }
}


function delete_record_post($conn) {
    $sql_delete = "SELECT * FROM ms17.nimekiri WHERE id = '".$_POST["id"]."'";

    if(mysqli_query($conn, $sql_delete)) {
        echo "<p>Kirje kustutamine õnnestus!</p>";
    }
    else {
        echo "<p>Viga: ".mysqli_error($conn)."</p>"; 
    }
    mysqli_close($conn);
}


function delete_button_post($conn) {
    echo "<input type='submit' name='delete_record_post' value='kustuta kirje'>";
    if(isset($_GET['delete_record_post'])) {
        delete_record_post($conn);
    }
}


?>


<html>
<!-- sisestusvorm -->
<form action="" method="post">
    <h3>kirje sisestamine</h3>
    <ul>
        <li>
            <label for="Eesnimi">Eesnimi</label>
            <input type="text" name="eesnimi">
            <label for="Perenimi">Perenimi</label>
            <input type="text" name="perenimi">
            <label for="Isikukood">Isikukood</label>
            <input type="text" name="isikukood">

        </li>
    </ul>
    <p><?php write_button($conn); ?></p>
</form>

</html>
<!-- väljastusvorm (näitab kõiki kirjeid) -->
<form action="" method="post">
    <p><?php show_all_button($conn); ?></p>
</form>


<!--päringuvorm (üksikud) -->
<form action="" method="get">
    <h3>andmete pärimine get meetodeiga</h3>
    <ul>
        <li>
            <label for="ID">ID</label>
            <input type="text" name="id">
        </li>
        <li>
            <?php search_by_button($conn); ?>
        </li>
    </ul>
</form>


<form action="" method="get">
    <h3>GET meetodiga andmete kustutamine. nii teha ei tohi</h3>
    <ul>
        <li>
            <label for="ID">ID</label>
            <input type="text" name="id">
        </li>
        <li>
            <?php delete_button($conn); ?>
        </li>
    </ul>
</form>


<form action="" method="post">
    <h3>nii võin kustutada</h3>
    <ul>
        <li>
            <label for="ID">ID</label>
            <input type="text" name="id">
        </li>
        <li>
            <?php delete_button_post($conn); ?>
        </li>
    </ul>
</form>

