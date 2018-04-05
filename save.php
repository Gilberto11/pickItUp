<?php

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "pickitup";

$username1 = $_POST['username'];
$password1 = md5($_POST['password']);


$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$products = $_POST['products'];
foreach ($products as $product){
	
}
$sql = "UPDATE products SET product_bought = '1'";
$result = $conn->query($sql);