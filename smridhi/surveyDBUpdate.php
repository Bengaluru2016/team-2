<?php

$conn = new mysqli("localhost","infinity","infinity","smridhi");
if (!$conn)
{
	 echo "database connection failed...";
}
	
else
{
	
	$sql="INSERT INTO 
	survey(first_name, last_name, dob, gender, father, father_occupation, mother, mother_occupation, language, income, adhar_card_number, location, living_period, school_before, contact_number, alt_contact_number, flag) 
	VALUES ('$_POST[Firstname]', '$_POST[Lastname]', '$_POST[DOB]', '$_POST[gender]', '$_POST[Fathername]', '$_POST[Foccupation]', '$_POST[Mothername]', '$_POST[Moccupation]', '$_POST[Language]', '$_POST[Income]', '$_POST[Aadhar]', '$_POST[Location]', '$_POST[Living]', '$_POST[sch]', '$_POST[Contact]', '$_POST[AltContact]', 0) ";
	if (!($res=$conn->query($sql)))
	{
		echo "unable to insert in survey";
	}
	else
	{
		 echo "added to survey";
		exit();
    }
	 $conn->close();
}

?>