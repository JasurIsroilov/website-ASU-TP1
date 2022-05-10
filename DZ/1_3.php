<html>
<head>
	<meta charset="utf-8">
	<link href="style.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<?php
		error_reporting( E_ERROR );
		
		include ("header.php");
		
		echo("<div class='dataform'>
						<form action='auth.php' method='POST'>
							<center><h2>Авторизация</h2></center>
							".($_SESSION['error'] != "" ? "<div class='error'>".$_SESSION['error']."</div>" : "")."
							<input type='text' name='login' placeholder='Имя'>
							<input type='password' name='pass' placeholder='Пароль'>
							<input type='submit' value='Вход'>
						</form>
					</div>");
		
		include ("footer.php");

	?>
</body>
</html>