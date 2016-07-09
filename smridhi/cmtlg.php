<?php include('masterTop.php');?>
<?php include('masterSidebarLogin.php');?>

     
      <div id="content">
        <!-- insert the page content here -->
            <form id="hh" action="cmtact.php" method="POST">
            <h1 id="bb"><pre>Community Mobiliser  Login</pre></h1>
            
            <p class="ee">* required field</p>
            <input type="text" class="dd" name="id" placeholder="Community Mobiliser Id"><span class="ff" >*</span><br><br><br>
            <input type="password" class="dd" name="pas" placeholder="Password"><span class="ff" >*</span><br><br><br>
            <input type="submit" value="Submit" id="gg">
            </form>
             <br><br>
            
        
      </div>
   
<?php include('masterBottom.php');?>
