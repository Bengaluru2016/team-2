<?php
$conn = new mysqli("localhost","root","password","samridhi");
if (!$conn)
{
	 echo "not connected to database";
}
else
{
	$sql="SELECT * FROM survey where flag = 1";
	$res = $conn->query($sql);
	$compare="SELECT * FROM student";
	while($row=$res->fetch_assoc())
	{
        if($_POST[$row["id"]] == "no")
        {
			$sql="INSERT INTO survey_not_updated SELECT * FROM survey where id = ".$row["id"];
			$query = $conn->query($sql);
		}
		else
		{
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
			$query = $conn->query($insert);
		
			$id = $row["id"];
			$delete = "DELETE FROM survey WHERE id = '$id'";
			$query = $conn->query($delete);
		}
	}
}
?>