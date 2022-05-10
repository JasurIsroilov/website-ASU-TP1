<!-- #ff7231 #b031ff #80ff31  ~ffac88 ~ff8f5b -->
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
						<form action='insert.php' method='POST'>
							<center><h2>Добавить запись</h2></center>
							".($_SESSION['error'] != "" ? "<div class='error'>".$_SESSION['error']."</div>" : "")."
							<input type='text' name='name' placeholder='Имя'>
							<input type='text' name='surname' placeholder='Фамилия'>
							<input type='text' name='secname' placeholder='Отчетсво'>
							<input type='text' name='phone' placeholder='Телефон'>
							<input type='text' name='adr' placeholder='Адрес'>
							<input type='submit' value='Добавить данные'>
						</form>
					</div>");
		
		include ("footer.php");

	?>
</body>
</html>