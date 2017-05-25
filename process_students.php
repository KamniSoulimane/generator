<?php
//header("Content-type: text/html; charset=UTF-8");
	require_once("db.php");
	$filiere = $_POST["filiere"];
	//$filiere = $_GET["filiere"];
	//echo $_POST["filiere"]."\n".$_POST["semestre"];
	$sql = "SELECT * FROM etudiant WHERE filiere ='{$filiere}' ";
	//echo $sql;
	$result = $conn->query($sql);
	//var_dump($result);
	$array;
	if ($result->num_rows > 0) {
		// output data of each row
		while($row = $result->fetch_assoc()) {
			echo "nom: " . $row["nom_etudiant"]. " - mat: " . $row["matricule"]. "<br>";
			//$array[]=$row["nom_etudiant"]. "|" . $row["matricule"];
			//echo htmlentities("éééé");
		}
	} else {
		echo "0 results";
	}
	
//echo json_encode($array);

?>
