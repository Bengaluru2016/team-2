<!DOCTYPE HTML>
<html>
<head>
<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

window.onload = function () {
    
   var ee =  <?php 
     
      $conn = new mysqli("localhost","infinity","infinity","smridhi");
       
        if($conn->error)
        {
             echo "error in connecting database";
        }
      
      $sql = "select count(dob) as dd from student;";
      $res = $conn->query($sql);
      $ro = $res->fetch_assoc();
      
      echo $ro["dd"];
      
    
     
    ?>;
    
    var ff = <?php  
            $sql = "select count(id) as dd from survey ;";
      $res = $conn->query($sql);
      $ro = $res->fetch_assoc();
      
      echo $ro["dd"];
        
       ?>;
     
        var gg = <?php  
            $sql = "select count(id) as dd from survey_not_updated ;";
      $res = $conn->query($sql);
      $ro = $res->fetch_assoc();
      
      echo $ro["dd"];
        
       ?>;
    
   document.getElementById("bhn").innerHTML = "Survey students count : "+(ee+ff+gg)+"<br>Enrolled students count : "+ee;
    
	var chart = new CanvasJS.Chart("chartContainer", {
		theme: "theme2",//theme1
		title:{
			text: "Survey vs Enrolled Graph"              
		},
		animationEnabled: true,   // change to false
		data: [              
		{
			// Change type to "bar", "area", "spline", "pie",etc.
			type: "column",
			dataPoints: [
				{ label: "survey",  y: ee + ff + gg },
				{ label: "enrolled", y: ee  }
				
			]
		}
		]
	});
	chart.render();
}

</script>
</head>
<body>
<div id="chartContainer" style="height: 300px; width: 100%;"></div>
<p id="bhn"></p>
</body>
</html>