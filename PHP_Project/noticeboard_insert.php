<meta charset="utf-8">
<?php
    session_start();
    if (isset($_SESSION["userid"])) $userid = $_SESSION["userid"];
    else $userid = "";
    if (isset($_SESSION["username"])) $username = $_SESSION["username"];
    else $username = "";

    if ( !$userid )
    {
        echo("
                    <script>
                    alert('공지사항 글쓰기는 로그인 후 이용해 주세요!');
                    history.go(-1)
                    </script>
        ");
                exit;
    }

    $subject = $_POST["subject"];
    $content = $_POST["content"];

	$subject = htmlspecialchars($subject, ENT_QUOTES);
	$content = htmlspecialchars($content, ENT_QUOTES);

    $pass = $_POST["pass"];
	$regist_day = date("Y-m-d (H:i)");  // 현재의 '년-월-일-시-분'을 저장


	$con = mysqli_connect("localhost", "user1", "12345", "smartit_db");

	$sql = "insert into noticeboard (id, name, subject, content, pass, regist_day, hit) ";
	$sql .= "values('$userid', '$username', '$subject', '$content', '$pass', '$regist_day', 0) ";
	mysqli_query($con, $sql);  // $sql 에 저장된 명령 실행
	mysqli_query($con, $sql);

	mysqli_close($con);                // DB 연결 끊기
//*
	echo "
	   <script>
	    location.href = 'noticeboard_list.php';
	   </script>
	";
/**/	
?>

  
