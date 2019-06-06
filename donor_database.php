<?php
if($_SERVER["REQUEST_METHOD"]=="POST")
{
	$name=$_REQUEST['donor_name'];
	$email=$_REQUEST['donor_email'];
	$password=$_REQUEST['donor_password'];
	$c_password=$_REQUEST['donor_confirmpassword'];
	$age=$_REQUEST['donor_age'];
	$blood_group=$_REQUEST['donor_bloodgroup'];
	$weight=$_REQUEST['donor_weight'];
	$ques=$_REQUEST['donor_ques'];
	$contact=$_REQUEST['donor_contact'];
	$address=$_REQUEST['donor_address'];

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "id7406017_registration";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// prepare and bind
$stmt = $conn->prepare("INSERT INTO donor VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("ssssisisis",$name,$email,$password,$c_password,$age,$blood_group,$weight,$ques,$contact,$address);

// set parameters and execute
$name=$_REQUEST['donor_name'];
$email=$_REQUEST['donor_email'];
$password=$_REQUEST['donor_password'];
$c_password=$_REQUEST['donor_confirmpassword'];
$age=$_REQUEST['donor_age'];
$blood_group=$_REQUEST['donor_bloodgroup'];
$weight=$_REQUEST['donor_weight'];
$ques=$_REQUEST['donor_ques'];
$contact=$_REQUEST['donor_contact'];
$address=$_REQUEST['donor_address'];
$stmt->execute();

echo "You have registered successfully !!";
$stmt->close();
$conn->close();
}
?>