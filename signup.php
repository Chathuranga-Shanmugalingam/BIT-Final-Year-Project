<?php

require_once 'source/db_connect.php';

if (isset($_POST['signup-btn'])) {

    $username = $_POST['user-name'];
    $email = $_POST['user-email'];
    $password = $_POST['user-password'];

    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    try {
        $SQLInsert = "INSERT INTO users(username, password, email, to_date)
    VALUES(:username, :password,:email,now())";

        $satement = $conn->prepare($SQLInsert);
        $satement->execute(array(':username' => $username, ':password' => $hashed_password, ':email' => $email));

        if ($satement->rowCount() == 1) {
            $result=header(('localhost:index.html'));
        }

    } catch (PDOException $e) {
        echo 'Error:', $e->getMessage();
    }

    // $mysqli = new MYSQLi('localhost', 'root', '', 'test', 'gamechanger');

    // $username = $mysqli->real_escape_string($_POST['user-name']);
    // $email = $mysqli->real_escape_string($_POST['user-email']);
    // $password = $mysqli->real_escape_string($_POST['user-password']);


}
?>