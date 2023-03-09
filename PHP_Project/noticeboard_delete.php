<?php

    $num   = $_GET["num"];
    $page   = $_GET["page"];

    $con = mysqli_connect("localhost", "user1", "12345", "smartit_db");
    $row = mysqli_fetch_array($result);


    $sql = "delete from noticeboard where num = $num";
    mysqli_query($con, $sql);
    mysqli_close($con);

    echo "
	     <script>
	         location.href = 'noticeboard_list.php?page=$page';
	     </script>
	   ";
?>

