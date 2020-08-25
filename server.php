<?php

	require 'help.php';
	require 'creds.php';

	// header("Access-Control-Allow-Origin: *");
	// header("Content-Type: application/json; charset=UTF-8");
	// header("Access-Control-Allow-Methods: OPTIONS,GET,POST,PUT,DELETE");
	// header("Access-Control-Max-Age: 3600");
	// header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

	// // local host
	// $servername = "localhost";
	// $username = "hudaif";
	// $password = "root";
	// $dbname = "conclave";

	// hostinger
	$servername = $creds['servername'];
	$username = $creds['username'];
	$password = $creds['password'];
	$dbname = $creds['dbname'];


	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);

	// Check connection
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	else {
		// echo("database connected!");
		// echo "<br>";
		// echo "<br>";
	}


	if (isset($_GET["function"])){
		if ($_GET["function"] == 'get_all_districts') {
			get_all_districts($conn);
		}

		if ($_GET["function"] == 'get_all_zones') {
			if (isset($_GET["district_id"])){
				get_all_zones($conn,$_GET["district_id"]);
			}
		}

		if ($_GET["function"] == 'get_all_units') {
			if (isset($_GET["district_id"]) && isset($_GET["zone_id"])){
				get_all_units($conn,$_GET["district_id"],$_GET["zone_id"]);
			}
		}		

	}


	// if ($_GET["function"] == 'get_all_zones' && $_GET["district_name"]) {
	// 	get_all_districts($conn);
	// }

	// fetch and display
	// if ($result->num_rows > 0) {
	//   // output data of each row
	//   while($row = $result->fetch_assoc()) {
	//     echo $row["district_name"]. "<br>";
	//   }
	// } else {
	//   echo "0 results";
	// }


	$conn->close();

?>






