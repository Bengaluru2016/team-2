<!DOCTYPE HTML>
<html>
<head>
<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">

window.onload = function () {
    
   var ee =  <?php 
     
      $conn = new mysqli("localhost","infinity","infinity","smridhi");
      $sql = "select count(id) as dd from student;";
      $res = $conn->query($sql);
      $ro = $res->fetch_assoc();
      
      echo $ro["dd"];
     
    ?>;
    
    var ff = <?php  
            $sql = "select count(id) as dd from student where fl=1;";
      $res = $conn->query($sql);
      $ro = $res->fetch_assoc();
      
      echo $ro["dd"];
        
       ?>;
     
    
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
				{ label: "survey",  y: ee  },
				{ label: "enrolled", y: ff  }
				
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

</body>
</html>