<?php
    session_start();

    $host="fdb32.awardspace.net";
    $database="3868876_shop";
    $user="3868876_shop";
    $password="HuTao0306";

    $mysqli = new mysqli($host, $user, $password, $database);

    $userEmail = $_POST['userEmail'];
    $userPassword = $_POST['userPassword'];

    $query = "SELECT idUser FROM USERS WHERE ('$userEmail' = userEmail) AND ('$userPassword' = userPassword)";
    $result = $mysqli->query($query);
    $_SESSION['idUser'] = $result->fetch_assoc()['idUser'];

    $query = "SELECT userProfilePicture FROM USERS WHERE ('$userEmail' = userEmail) AND ('$userPassword' = userPassword)";
    $result = $mysqli->query($query);
    $_SESSION['userProfilePicture'] = $result->fetch_assoc()['userProfilePicture'];

    $mysqli->close();
    
    header('Location: ../../shop.php');
?>