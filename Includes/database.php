<?php
$databaseConnection = new PDO(
    'mysql:host=localhost;dbname=javascript;' , 'root','root' ,
    [PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ]
);
