<html>
<head>
<title>Attendance Record</title>
</head>
<body>
<h1><b>Attendance Record of the troops</b></h1>
<?php
//assign the variables to open troop chief's attendance record file in read mode
 
	$Army_attendance=fopen("/home/ArmyGeneral/attendance_record","r");

//read each line from the file and print on the webpage 

	echo "<h2><b>Army Troops Attendance</h2></b>";
	echo "<hr><br>";
	while(!feof($Army_attendance))
	{
		echo fgets($Army_attendance);
		echo "<br>";
	}
	echo "<br><br>";
?>
</body>
</html>
