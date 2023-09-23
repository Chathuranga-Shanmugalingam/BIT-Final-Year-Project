<?php
require_once 'source/session.php';
require_once 'source/db_connect.php';

if (isset($_POST['login-btn'])) {
    $user = $_POST['user-name'];
    $user = $_POST['user-password'];

    try {
        $SQLQuerry = 'SELECT*FROM users WHERE username=:username';
        $satement->execute(array(':username' => $user));

        while ($row = $satement->fetch()) {
            $id = $row['id'];
            $hashed_password = $row['password'];
            $username = $row['username'];

            if (password_verify($password, $hashed_password)) {
                $_SESSION['id'] = $id;
                $_SESSION['username'] = $username;

            } else {
                echo 'Error:Invalid username or Password';
            }
        }
    } catch (PDOException $e) {
        echo 'Error:', $e->getMessage();
    }
}