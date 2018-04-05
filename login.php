<?php

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "pickitup";

$username1 = $_POST['username'];
$password1 = md5($_POST['password']);

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$sql = "SELECT username, user_hash
FROM accounts 
WHERE (username = '".$username1."' OR email = '".$username1."') AND password = '".$password1."'";
$result = $conn->query($sql);

if ($result->num_rows > 0){
	while($row = $result->fetch_assoc()) {
		header("Location: http://localhost:8888/pickItUp/main.html#".$row['user_hash'], true, 301);
		exit();
	}
}else{
	//echo "0 results";
    header("Location: http://localhost:8888/pickItUp/index.html");
}
$conn->close();

?>