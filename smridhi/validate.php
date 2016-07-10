<?php
$conn = new mysqli("localhost","root","password","smridhi");
if (!$conn)
{
	 echo "not connected to database";
}
else
{
	
	$sql="SELECT * FROM survey";
	$res = $conn->query($sql);
	$compare="SELECT * FROM student";
	while($row=$res->fetch_assoc())
	{
        if($_POST[$row["id"]] == "no")
         continue;
        $id = $row["id"];
        $sql = "update survey set flag=1 where id='$id';";
        $query = $conn->query($sql);
        
		$flag = false;
		if( $row["adhar_card_number"] != '' )
		{
			$query = $conn->query($compare);
			while($compareRow = $res2->fetch_assoc())
			{
				if( strcmp($compareRow["adhar_card_number"], $row["adhar_card_number"]) == 0)
			    {
					$id = $row["id"];
					
					$duplicate = "INSERT INTO survey_not_updated SELECT * FROM survey WHERE id = '$id'";
					$query = $conn->query($duplicate);
					
					$delete = "DELETE FROM survey WHERE id = '$id'";
					$query = $conn->query($delete);
					
					$flag = true;
					break;
				}
			}
		}
		if($flag == true)
			break;
		
		$res2 = $conn->query($compare);
		while($compareRow = $res2->fetch_assoc())
		{
			if(strcmp($compareRow["location"], $row["location"]) == 0)
			{
				if(strcmp($compareRow["gender"], $row["gender"]) == 0 && strcmp($compareRow["dob"], $row["dob"]) == 0)
				{
					// If there is an error in first name
					if(strcmp($compareRow["last_name"], $row["last_name"]) == 0)
					{
						if(strcmp($compareRow["first_name"], $row["first_name"]) == 0)
						{
							$id = $row["id"];
							
							$duplicate = "INSERT INTO survey_not_updated SELECT * FROM survey WHERE id = '$id'";
							$query = $conn->query($duplicate);
							
				
							$delete = "DELETE FROM survey WHERE id = '$id'";
							$query = $conn->query($delete);
							break;
						}
						else
						{
							$id = $row["id"];
							$registration_id = $compareRow["registration_id"];
						
							$mapping = "INSERT INTO mapping VALUES('$id', '$registration_id')";
							$query = $conn->query($mapping);
							$flag = true;
							break;
						}
					}
					// If there is an error in last name
					else
					{
						if(strcmp($compareRow["first_name"], $row["first_name"]) == 0)
						{
							$id = $row["id"];
							$registration_id = $compareRow["registration_id"];
						
							$mapping = "INSERT INTO mapping VALUES('$id', '$registration_id')";
							$query = $conn->query($mapping);
							
							$flag = true;
							break;
						}
					}
				}
			}
		}// inner while ends
		if( $flag == true )
			break;
		
		$t1 = $row["first_name"];
		$t2 = $row["last_name"];
		$t3 = $row["dob"];
		$t4= $row["gender"];
		$t5 = $row["father"];
		$t6 = $row["father_occupation"];
		$t7 = $row["mother"];
		$t8 = $row["mother_occupation"];
		$t9 = $row["language"];
		$t10 = $row["income"];
		$t11 = $row["adhar_card_number"];
		$t12 = $row["location"];
		$t13 = $row["living_period"];
		$t14 = $row["school_before"];
		$t15 = $row["contact_number"];
		$t16 = $row["alt_contact_number"];
		$registration_id = uniqid ( "", false );		
		
		$insert = "INSERT INTO student(first_name, last_name, dob, gender, father, father_occupation, mother, mother_occupation, language, income, adhar_card_number, location, living_period, school_before, contact_number, alt_contact_number, registration_id) 
		VALUES('$t1','$t2','$t3','$t4','$t5','$t6','$t7','$t8','$t9','$t10','$t11','$t12','$t13','$t14','$t15','$t16','$registration_id')";
		$res8 = $conn->query($insert);
		
		$id = $row["id"];
		$delete = "DELETE FROM survey WHERE id = '$id'";
		$res9 = $conn->query($delete);
	}
}
?>
<html>
<body>
<form action=" ">
<input type="submit" value = "Proceed"/>
</form>
</body>
</html>