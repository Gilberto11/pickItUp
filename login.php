<?php

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "pickitup";

$username1 = $_POST['username'];
$password1 = $_POST['password'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$sql = "SELECT username 
FROM accounts 
WHERE (username = '".$username1."' OR email = '".$username1."') AND password = '".$password1."'";
$result = $conn->query($sql);

if ($result->num_rows > 0){
	header("Location: http://localhost/pickItUp/main.html", true, 301);
		exit();
}else{
	//echo "0 results";
    header("Location: http://localhost/pickItUp/index.html");
}
$conn->close();

?>
