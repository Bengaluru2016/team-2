<html>
	<body>
		<h2>Discarded Data</h2>
		<?php
			$conn = new mysqli("localhost","root","password","samridhi");
			$sql = "select* from survey_not_updated";
			$res = $conn->query($sql);
			if($res->num_rows > 0)
			{
				while($row=$res->fetch_assoc())
                {
					
		?>
		<p> <?php echo $row["first_name"]." ".$row["last_name"]." having DOB ".$row["dob"]. " (".$row["gender"].") due to conflicting data"; ?> </p>
		<?php
				}
			}
		?>
		
		<h2>Discrepencies</h2>
		<form name="ValidateForm" method="POST" action="validate.php">
			<?php
			$conn = new mysqli("localhost","root","password","samridhi");
			$sql = "select* from survey where flag = 1";
			$res = $conn->query($sql);
          
			if($res->num_rows > 0)
			{
			?>
            <form name="DiscrepenciesForm" method="POST" action="resolve.php">
            <?php
                while($row=$res->fetch_assoc())
                {
					 $id = $row["id"];
            ?>
            <input type="hidden" name=<?php echo $id; ?> value="no">
            <input type="checkbox" name=<?php echo $id; ?> value="yes" >
                      
            <?php
                    echo $row["first_name"]." ".$row["last_name"]." having DOB ".$row["dob"]. " (".$row["gender"].")";
					echo "<br>";
                    echo "Matches alot with: <br>";
					
					$getRegistration = "select registration_id from mapping where id =".$id;
					$query = $conn->query($getRegistration);
					$record = $query->fetch_assoc();
					$registration_id = $record["registration_id"];
					
					$getStudent = "select * from student where registration_id = '$registration_id'";
					$query = $conn->query($getStudent);
					$record = $query->fetch_assoc();
					echo $record["first_name"]." ".$record["last_name"]." having DOB ".$record["dob"]. " (".$record["gender"].")";
                }
            ?>
			<br>
			<input type="submit">
		</form>
		<?php
			}
			else
			{
				echo "No discrepencies to resolve!";
			}
		?>
	</body>
</html>