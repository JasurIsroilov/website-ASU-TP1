<html>
<head>
	<meta charset="utf-8">
	<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<?php
		error_reporting( E_ERROR );
		
		session_start();
		
		if($_SESSION['auth'] == true){
			header ('Location: root.php');
			exit();
		}
		
		echo("<div id='header'><center><h1>DETONATOR CLOCK</h1></center></div>");
		
		echo("<div class='dataform'>
						<form action='auth.php' method='POST'>
							<center><h2>Авторизация</h2></center>
							".($_SESSION['error'] != "" ? "<div class='error'>".$_SESSION['error']."</div>" : "")."
							<input type='text' name='login' placeholder='Имя'>
							<input type='password' name='pass' placeholder='Пароль'>
							<input type='submit' value='Вход'>
						</form>
					</div>");
		$_SESSION['error'] = "";
		include ("footer.php");

	?>
</body>
</html>