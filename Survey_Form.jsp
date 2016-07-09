

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link href="Layout.css" rel='stylesheet' type='text/css'/>
<link href="Menu.css" rel='stylesheet' type='text/css'/>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Register</title>
<script type="text/javascript">
 function validate()
 {
     var Fname=document.RegisterForm.Firstname.value;
     var Lname=document.RegisterForm.Lastname.value;
     var email=document.RegisterForm.Email.value;
     var Uname=document.RegisterForm.UserName.value;
     var pass=document.RegisterForm.Password.value;
     var cpass=document.RegisterForm.ConfirmPass.value;
     
     var reg_fname=new RegExp("^[a-zA-Z]+$","g");
     var reg_lname=new RegExp("^[a-zA-Z]+$","g");
     var reg_uname=new RegExp("^[a-zA-Z]+$","g");
     var reg_email=new RegExp("^[a-zA-Z0-9.-_%]+@[a-zA-Z0-9.-]+\.[a-z]{2,3}$");
     
     if(Fname.length==0 || Lname.length==0 || email.length==0 || Uname.length==0 || pass.length==0)
     {
         document.getElementById("demo1").innerHTML="Required" ;
         document.getElementById("demo2").innerHTML="Required" ;
         document.getElementById("demo3").innerHTML="Required" ;
         document.getElementById("demo4").innerHTML="Required" ;
         document.getElementById("demo5").innerHTML="Required" ;
         return false;
     }
     
     if(!Fname.match(reg_fname))
     {
        document.getElementById("demo1").innerHTML="Enter only alphabets!!" ;
        return false;
     }
     if(!Lname.match(reg_lname))
     {
        document.getElementById("demo2").innerHTML="Enter only alphabets!!" ;
        return false;
     }
     if(!Uname.match(reg_uname))
     {
        document.getElementById("demo4").innerHTML="Enter only alphabets!!" ;
        return false;
     }
     if((email!=null)&&(!email.match(reg_email)))
     {
         document.getElementById("demo3").innerHTML="invalid email address";return false;
     }
     if(pass.length<4)
     {
         document.getElementById("demo5").innerHTML="weak";
         return false;
     }
      
     
     
     if(cpass!=pass)
     {
         document.getElementById("demo6").innerHTML="Doesn't match";
         return false;
     } 
     return true;
 }
</script>
</head>

<body>

<div id="Holder">
<div id="Header"></div>
<div id="NavBar">
	<nav>
		<ul>
			<li><a href="#">Login</a></li>
			<li><a href="#">Register</a></li>
			<li><a href="#">Forgot Password</a></li>
		</ul>
	</nav>
</div>
<div id="Content">
	<div id="PageHeading">
	  <h1>Sign Up </h1>
	</div>
	<div id="ContentRight">
            <form  name="RegisterForm" method="POST" action="RegInsert.jsp" onclick="validate()">
	  <table width="455" border="0" align="center" cellpadding="10">
        <tr>
          <td width="449">
		  <table width="337" border="0">
              <tr>
			       <td><label for="textfield"></label>
                    <p>First Name </p>
                  <p>
                      <input name="Firstname" type="text" class="StyleTextField" id="Firstname" />
                  </p>                </td>
                <td><label for="label"></label>
                    <p>Last name </p>
                  <p>
                      <input name="Lastname" type="text" class="StyleTextField" id="Lastname" />
                  </p>                </td>
              </tr>
          </table></td>
		  
        </tr>
		<tr>
		 <td>
		    <p>Date of birth (dd/mm/yyyy)</p>
			
		    <p>
		      <label for="textfield"></label>
		      <input name="DOB" type="text" class="StyleTextField" id="DOB" />
		    </p></td>
		</tr>
		<tr>
          <td><label for="label3"></label>
              <p>Gender              </p>
              <p>
                <input name="male" type="radio" value="radiobutton" id="radiobutton1" />
              Male &nbsp;&nbsp;
                 <input name="female" type="radio" value="radiobutton" id="radiobutton2" />
              Female</p>
              
           
          </td>
		 <tr>
          <td width="449">
		  <table width="337" border="0">
              <tr>
                <td><label for="textfield"></label>
                    <p>Father Name </p>
                  <p>
                      <input name="Fathername" type="text" class="StyleTextField" id="Fathername" />
                  </p>                </td>
                <td><label for="label"></label>
                    <p>Occupation </p>
                  <p>
                      <input name="Foccupation" type="text" class="StyleTextField" id="Occupation" />
                  </p>                </td>
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
                      <input name="mothername" type="text" class="StyleTextField" id="Mothername" />
                  </p>                </td>
                <td><label for="label"></label>
                    <p>Occupation </p>
                  <p>
                      <input name="Moccupation" type="text" class="StyleTextField" id="Occupation" />
                  </p>                </td>
              </tr>
          </table></td>
		  
        </tr>
		
		 
        
		
		<tr>
		 <td>
		    <p>Native Language</p>
			
		    <p>
		      <label for="textfield"></label>
		      <input name="Language" type="text" class="StyleTextField" id="Lang" />
		    </p></td>
		</tr>
		
		<tr>
		 <td>
		    <p>Annual Income</p>
			
		    <p>
		      <label for="textfield"></label>
		      <input name="AnnIncome" type="text" class="StyleTextField" id="Income" />
		    </p></td>
		</tr>
		<tr>
		 <td>
		    <p>Aadhar card Number</p>
			
		    <p>
		      <label for="textfield"></label>
		      <input name="Aadhar" type="text" class="StyleTextField" id="Aadhar" />
		    </p></td>
		</tr>
        <tr>
          <td><label for="label2"></label>
              <p>Location </p>
            <p>
                <input name="Location" type="Email Address" class="StyleTextField" id="label2" />
            </p>
           </td>
        </tr>

        <tr>
          <td><label for="label3"></label>
              <p>How long have you been living here (in terms of months) ?</p>
            <p>
                <input name="living" type="text" class="StyleTextField" id="living" />
            </p>
           
          </td>
        </tr>
		
		<tr>
          <td><label for="label3"></label>
              <p>Whether schooled ever?              </p>
              <p>
                <input name="yes" type="radio" value="radiobutton" id="radiobutton1" />
              Yes &nbsp;&nbsp;
                 <input name="no" type="radio" value="radiobutton" id="radiobutton2" />
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
</div>
</div>
</body>
</html>