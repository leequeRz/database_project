<?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "arherelee";

  $condb = mysqli_connect($servername, $username, $password, $dbname) 
    or die("Error: " . mysqli_connect_error());
  mysqli_query($condb, "SET NAMES 'utf8'");
?>