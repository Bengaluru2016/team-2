<html>
	<body>
		<form name="ValidateForm" method="POST" action="validate.php">
            
             <?php
         
          $conn = new mysqli("localhost","infinity","infinity","smridhi");
          $sql = "select* from survey;";
          $res = $conn->query($sql);$rg=0;
          
          if($res->num_rows > 0)
          {
              ?>
              <form name="ValidateForm" method="POST" action="validate.php">
           
              <?php
                 while($ro=$res->fetch_assoc())
                 {
                      if($ro["flag"] == 1)
                      continue;
                      
                      $rg=1;
                      $we = $ro["id"];
                      
                      ?>
                      <input type="hidden" name=<?php echo $we; ?> value="no">
                      <input type="checkbox" name=<?php echo $we; ?> value="yes" >
                      
                      <?php
                      
                      echo $ro["first_name"]." ".$ro["last_name"];echo "<br>";
                      
                 }
                 
                 if($rg == 0)
                 {
                      echo "Few descripancies are there..";
                 }
                 
                 else
                 {
                 
                 ?>
                <br>
                 <input type="submit">
                 </form>
                 <?php
                 }
          }
          else
          {
               echo "No new surveys have arrived";
          }
          
       
         ?>
            
            
            
            
            
	
	
	</body>
</html>