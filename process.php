<?php
//header("Content-type: text/html; charset=UTF-8");
	require_once("db.php");
	$filiere = $_POST["filiere"];
	$sem = $_POST["semestre"];
	//echo $_POST["filiere"]."\n".$_POST["semestre"];
	//$sql = "SELECT * FROM module WHERE semestre = '{$sem}' AND filiere ='{$filiere}' ";

$sql = "SELECT * FROM `module` WHERE `filiere`='{$filiere}' AND `semestre`='{$sem}' ORDER BY `coefficient` DESC";
	//echo $sql;
	$result = $conn->query($sql);
	//var_dump($result);
	$array;
	if ($result->num_rows > 0) {
		// output data of each row
		while($row = $result->fetch_assoc()) {
//			echo "id: " . $row["id_module"]. " - lib: " . $row["libele"]. " " . $row["coefficient"]. "<br>";
			$array[]=$row["libele"]. "|" . $row["coefficient"];
			//echo htmlentities("éééé");
		}
	} else {
		echo "0 results";
	}
	
echo json_encode($array);

?>




