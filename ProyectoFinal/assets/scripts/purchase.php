<?php
    session_start();

    $host="fdb32.awardspace.net";
    $database="3868876_shop";
    $user="3868876_shop";
    $password="HuTao0306";

    $idUser = $_SESSION['idUser'];

    $mysqli = new mysqli($host, $user, $password, $database);
    $query = "DELETE FROM CART WHERE (idUser = $idUser)";

    $mysqli->query($query);
    $mysqli->close();

    header('Location: ../../cart.php');
?>