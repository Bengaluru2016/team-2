<?php

$con = mysql_connect("localhost","infinity","infinity");
if (!$con)
{
	echo "fail";
	//header('Location: http://10.242.6.72/samridhi/fail.html');
}
	
else
{
	mysql_select_db("samridhi", $con);
	$sql="INSERT INTO 
	survey(first_name, last_name, dob, gender, father, father_occupation, mother, mother_occupation, language, income, adhar_card_number, location, living_period, school_before, contact_number, alt_contact_number) 
	VALUES ('$_POST[Firstname]', '$_POST[Lastname]', '$_POST[DOB]', '$_POST[gender]', '$_POST[Fathername]', '$_POST[Foccupation]', '$_POST[Mothername]', '$_POST[Moccupation]', '$_POST[Language]', '$_POST[Income]', '$_POST[Aadhar]', '$_POST[Location]', '$_POST[Living]', '$_POST[sch]', '$_POST[Contact]', '$_POST[AltContact]') ";
	if (!mysql_query($sql,$con))
	{
		echo "insert error";
		//header('Location: http://10.242.6.72/samridhi/fail.html');
	}
	else
	{
		header('Location: http://localhost/samridhi/survy.html');
		exit();
    }
	mysql_close($con);
}

?>