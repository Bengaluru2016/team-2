<? php
$con = mysql_connect("localhost","root","password");
if (!$con)
{
	#header('Location: ');
	$echo "fail";
	exit();
}
else
{
	mysql_select_db("samridhi", $con);
	$sql="SELECT * from survey";
	$result=mysql_query($sql,$con);
	if( $row=mysql_fetch_array($result) )
	{
		$echo $row[1];
	}
}
?>
