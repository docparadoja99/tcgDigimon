<?php
    session_start();

    $host="fdb32.awardspace.net";
    $database="3868876_shop";
    $user="3868876_shop";
    $password="HuTao0306";

    $idProduct = $_POST['idProduct'];
    $idUser = $_SESSION['idUser'];

    $mysqli = new mysqli($host, $user, $password, $database);

    $query = "INSERT INTO CART (idUser, idProduct) VALUES ('$idUser', '$idProduct')";

    $mysqli->query($query);
    $mysqli->close();

    header('Location: ../../cart.php');
?>