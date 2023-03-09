<?php
    $id = $_GET["id"];

    $pass = $_POST["pass"];
    $name = $_POST["name"];
    $email1  = $_POST["email1"];
    $email2  = $_POST["email2"];

    $email = $email1."@".$email2;
	$snsurl = $_POST["snsurl"];
          
    $con = mysqli_connect("localhost", "user1", "12345", "smartit_db");
    $sql = "update members set pass='$pass', name='$name' , email='$email', snsurl='$snsurl' ";
    $sql .= " where id='$id'";
    mysqli_query($con, $sql);

    mysqli_close($con);     

    echo "
	      <script>
	          location.href = 'index.php';
	      </script>
	  ";
?>

   
