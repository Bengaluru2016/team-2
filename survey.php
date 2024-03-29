

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link href="Layout.css" rel='stylesheet' type='text/css'/>
<link href="Menu.css" rel='stylesheet' type='text/css'/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Register</title>
<?php
// define variables and set to empty values
$firstname = $lastname = $gender = $father = $fatherOccupation = $mother = $motherOccupation = $nativeLang = $adharCard = "";
$firstnameErr = $lastnameErr = $genderErr = $fatherErr = $fatherOccupationErr = $motherErr = $motherOccupationErr = $nativeLangErr = $adharCardErr = "";
if ($_SERVER["REQUEST_METHOD"] == "POST")
{
	$nextPage=true;
    $firstname = test_input($_POST["Firstname"]);
	if(strlen($firstname) > 20)
	{
		$nextPage = false;
		$firstnameErr = "Max length should be 20 characters";
	}
	
	$lastname = test_input($_POST["Lastname"]);
	if(strlen($lastname) > 10)
	{
		$nextPage = false;
		$lastnameErr = "Max length should be 20 characters";
	}
	
	if (empty($_POST["gender"]))
    {
		$genderErr = "Gender is required";
		$nextPage=false;
    } 
   else
    {
		$gender = test_input($_POST["gender"]);
    }
   
    $father = test_input($_POST["Fathername"]);
	if(strlen($father) > 20)
	{
		$nextPage = false;
		$fatherErr = "Max length should be 20 characters";
	}
	
	$fatherOccupation = test_input($_POST["Foccupation"]);
	if(strlen($fatherOccupation) > 50)
	{
		$nextPage = false;
		$fatherOccupationErr = "Max length should be 50 characters";
	}
	
	$mother = test_input($_POST["Mothername"]);
	if(strlen($mother) > 20)
	{
		$nextPage = false;
		$motherErr = "Max length should be 20 characters";
	}
	
	$motherOccupation = test_input($_POST["Moccupation"]);
	if(strlen($motherOccupation) > 50)
	{
		$nextPage = false;
		$motherOccupationErr = "Max length should be 50 characters";
	}
	
	$nativeLang = test_input($_POST["Language"]);
	if(strlen($nativeLang) > 50)
	{
		$nextPage = false;
		$nativeLangErr = "Max length should be 20 characters";
	}
	
	$adharCard = test_input($_POST["Aadhar"]);
	if(strlen($lastname) > 20 || strlen($lastname) < 20)
	{
		$nextPage = false;
		$adharCardErr = "Length should be 12 characters";
	}
	if($nextPage == true)
	{
		header('Location: http://localhost/samridhi/serverDBUpdate.php');
		exit();
	}
}
function test_input($data) {
   $data = trim($data);
   $data = stripslashes($data);
   $data = htmlspecialchars($data);
   return $data;
}
?>
</head>

<body>

	<div id="ContentRight">
            <form  name="RegisterForm" method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
	  <table width="455" border="0" align="center" cellpadding="10">
        <tr>
          <td width="449">
		  <table width="337" border="0">
              <tr>
			       <td><label for="textfield"></label>
                    <p>First Name </p>
                  <p>
                      <input name="Firstname" type="text" class="StyleTextField" id="Firstname" required  />
                  </p> 
				  <span class="error"><?php echo $firstnameErr;?> </span>
                 <label for="label"></label>
                    <p>Last name </p>
                  <p>
                      <input name="Lastname" type="text" class="StyleTextField" id="Lastname"  required />
                  </p>     
					<span class="error"><?php echo $lastnameErr;?> </span>
				</td>
              </tr>
          </table></td>
		  
        </tr>
		<tr>
		 <td>
		    <p>Date of birth (dd/mm/yyyy)</p>
			
		    <p>
		      <label for="textfield"></label>
		      <input name="DOB" type="date" class="StyleTextField" id="DOB" required />
		    </p></td>
		</tr>
		<tr>
          <td><label for="label3"></label>
              <p>Gender              </p>
              <p>
                <input value="M" type="radio" name="gender" id="radiobutton1"   />
              Male &nbsp;&nbsp;
                 <input value="F" type="radio" name="gender" id="radiobutton2" />
              Female</p></td>
			  <td>
			  
              <span class="error"><?php echo $genderErr;?> </span>
           
          </td>
		 <tr>
          <td width="449">
		  <table width="337" border="0">
              <tr>
                <td><label for="textfield"></label>
                    <p>Father Name </p>
                  <p>
                      <input name="Fathername" type="text" class="StyleTextField" id="Fathername" required />
                  </p>
				  <span class="error"><?php echo $fatherErr;?> </span>
				</td>
                <td><label for="label"></label>
                    <p>Occupation </p>
                  <p>
                      <input name="Foccupation" type="text" class="StyleTextField" id="Occupation" required />
                  </p></td>
				  <td>
				 <span class="error"><?php echo $fatherOccupationErr;?> </span> 
				 </td>
              </tr>
          </table></td>
		  
        </tr>
		 <tr>
          <td width="449">
		  <table width="337" border="0">
              <tr>
                <td><label for="textfield"></label>
                    <p>Mother Name </p>
                  <p>
                      <input name="Mothername" type="text" class="StyleTextField" id="Mothername" required />
                  </p>
				  <span class="error"><?php echo $motherErr;?> </span>
				 </td>
                <td><label for="label"></label>
                    <p>Occupation </p>
                  <p>
                      <input name="Moccupation" type="text" class="StyleTextField" id="Occupation" required />
                  </p>
				  <span class="error"><?php echo $motherOccupationErr;?> </span>
				 </td>
              </tr>
          </table></td>
		  
        </tr>
		
		 
        
		
		<tr>
		 <td>
		    <p>Native Language</p>
			
		    <p>
		      <label for="textfield"></label>
		      <input name="Language" type="text" class="StyleTextField" id="Lang" required />
		    </p>
			<span class="error"><?php echo $nativeLangErr;?> </span>
			</td>
		</tr>
		
		<tr>
		 <td>
		    <p>Annual Income</p>
			
		    <p>
		      <label for="textfield"></label>
		      <input name="Income" type="text" class="StyleTextField" id="Income"  />
		    </p></td>
		</tr>
		<tr>
		 <td>
		    <p>Aadhar card Number</p>
			
		    <p>
		      <label for="textfield"></label>
		      <input name="Aadhar" type="text" class="StyleTextField" id="Aadhar" maxlength = 12/>
		    </p>
			<span class="error"><?php echo $adharCardErr;?> </span>
			</td>
		</tr>
        <tr>
          <td><label for="label2"></label>
              <p>Location </p>
            <p>
                <input name="Location" type="text" class="StyleTextField" id="label2" required />
            </p>
           </td>
        </tr>

        <tr>
          <td><label for="label3"></label>
              <p>How long have you been living here (in terms of months) ?</p>
            <p>
                <input name="Living" type="text" class="StyleTextField" id="living" />
            </p>
           
          </td>
        </tr>
		
		<tr>
          <td><label for="label3"></label>
              <p>Whether schooled ever?              </p>
              <p>
                <input value="y" type="radio" name="sch" id="radiobutton1" />
              Yes &nbsp;&nbsp;
                 <input value="n" type="radio" name="sch" id="radiobutton2"  />
              No</p>
              
           
          </td>
        </tr>
		<tr>
          <td><label for="label3"></label>
              <p>Contact Number              </p>
              
           
              <p>
                <label for="textfield"></label>
                <input name="Contact" type="text" class="StyleTextField" id="Contact" />
            </p></td>
			
        </tr>
		<tr>
		<td><label for="label3"></label>
              <p>Alternate Contact Number              </p>
              
           
              <p>
                <label for="textfield"></label>
                <input name="AltContact" type="text" class="StyleTextField" id="AltContact" />
            </p></td>
       
        </tr>
        <tr>
          <td><label for="Submit"></label>
              <input type="submit" name="Submit" value="Register" id="Submit" /></td>
        </tr>
      </table>
	  
	</form>
	</div>

</body>
</html>