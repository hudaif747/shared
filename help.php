<?php
	

	function get_all_units($conn,$district_id,$zone_id){

		$sql = "SELECT * FROM msm_unit WHERE district_id = ".$district_id." AND zone_id = ".$zone_id;
		$result = $conn->query($sql);

		//Initialize array variable
		$dbdata = array();

		if ($result->num_rows > 0) {
		  // output data of each row
		  while($row = $result->fetch_assoc()) {
		    $dbdata[]=$row;
		  }
		} else {
		  echo "404";
		  exit();
		}

		echo json_encode($dbdata);
	}


	function get_all_zones($conn,$district_id){

		$sql = "SELECT * FROM msm_zone WHERE district_id = ".$district_id;
		$result = $conn->query($sql);

		//Initialize array variable
		$dbdata = array();

		if ($result->num_rows > 0) {
		  // output data of each row
		  while($row = $result->fetch_assoc()) {
		    $dbdata[]=$row;
		  }
		} else {
		  echo "404";
		  exit();
		}

		echo json_encode($dbdata);

		// echo json_encode($district_name);
	}

	function get_all_districts($conn){

		$sql = "SELECT * FROM msm_district";
		$result = $conn->query($sql);

		//Initialize array variable
		$dbdata = array();

		if ($result->num_rows > 0) {
		  // output data of each row
		  while($row = $result->fetch_assoc()) {
		    $dbdata[]=$row;
		  }
		} else {
		  echo "404";
		  exit();
		}

		echo json_encode($dbdata);
	}

?>


