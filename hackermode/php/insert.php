<?php
        $con =mysqli_connect('database','newuser','newword');
        if(!$con)
        {
                echo "Not connected to server";
        }
        if(!mysqli_select_db($con,'Complaint_Portal'))
        {
        echo "Database not selected";
        }
        $username = $_POST['username'];
        $complaint = $_POST['complaint'];
        $sql = "INSERT INTO complaint_table(username,complaint) VALUES ('$username','$complaint')";
        if(!mysqli_query($con,$sql))
        {
        echo "Not Inserted";
        }
        else
        {
        echo "inserted";
        }
?>
