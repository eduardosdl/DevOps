<?php
$link = new mysqli("connection-mysql", "root", "senha123", "meubanco");

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}
?>