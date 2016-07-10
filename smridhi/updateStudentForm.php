<html>
	<body>
		<form name="ValidateForm" method="POST" action="validate.php">
			<?php
			$conn = new mysqli("localhost","root","password","samridhi");
			$sql = "select* from survey where flag = 0";
			$res = $conn->query($sql);
          
			if($res->num_rows > 0)
			{
			?>
            <form name="ValidateForm" method="POST" action="validate.php">
            <?php
                while($row=$res->fetch_assoc())
                {               
                    $id = $row["id"];
            ?>
            <input type="hidden" name=<?php echo $id; ?> value="no">
            <input type="checkbox" name=<?php echo $id; ?> value="yes" >
                      
            <?php
                      
                    echo $row["first_name"]." ".$row["last_name"];
					echo "<br>";
                      
                }
            ?>
			<br>
			<input type="submit">
		</form>
		<?php
			}
			else
			{
				echo "No new surveys have arrived";
			}
		?>
	</body>
</html>