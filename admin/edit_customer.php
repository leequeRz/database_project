<?php

	session_start();
	require_once '../config/db.php';
    if(!isset($_SESSION['staff_login'])){
        // header('location: index.php');
        echo 'ไม่มีข้อมูล';
    }
?>