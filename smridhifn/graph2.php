<!DOCTYPE HTML>
<html>
<head>
<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

window.onload = function () {
    
   var ee =  <?php 
     
      $conn = new mysqli("localhost","infinity","infinity","smridhi");
      $sql = "select count(dob) as dd from student where cat=2;";
      $res = $conn->query($sql);
      $ro = $res->fetch_assoc();
      
      echo $ro["dd"];
     
    ?>;
    
    
    var gg = <?php  
            $sql = "select count(dob) as dd from student where cat=1;";
      $res = $conn->query($sql);
      $ro = $res->fetch_assoc();
      
      echo $ro["dd"];
        
       ?>;
    
    
    
    var ff = <?php  
            $sql = "select count(dob) as dd from student where cat=0;";
      $res = $conn->query($sql);
      $ro = $res->fetch_assoc();
      
      echo $ro["dd"];
        
       ?>;
     
     document.getElementById("bhn").innerHTML = "Bridge students : "+gg+"<br>Drop out students : "+ff+"<br>Mainstream Students :"+ee;
    
	var chart = new CanvasJS.Chart("chartContainer", {
		theme: "theme2",//theme1
		title:{
			text: "Survey vs Enrolled Graph"              
		},
		animationEnabled: true,   // change to false
		data: [              
		{
			// Change type to "bar", "area", "spline", "pie",etc.
			type: "pie",
			dataPoints: [
				{ label: "Bridge",  y: gg  },
				{ label: "Drop out", y: ff  },
				{ label: "Mainstream", y: ee  }
				
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