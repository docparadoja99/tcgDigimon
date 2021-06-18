<?php
    session_start();

    $host="fdb32.awardspace.net";
    $database="3868876_shop";
    $user="3868876_shop";
    $password="HuTao0306";

    $productURL = $_POST['URL'];
    $productDescription = $_POST['Description'];
    $productPrice = $_POST['Price'];
    $productStock = $_POST['Stock'];

    $mysqli = new mysqli($host, $user, $password, $database);

    $query = "INSERT INTO PRODUCTS (productDescription, productImageURL, productPrice, productStock) VALUES ('$productDescription', '$productURL', '$productPrice', '$productStock')";

    $mysqli->query($query);
    $mysqli->close();

    header('Location: ../../addItem.php');
?>