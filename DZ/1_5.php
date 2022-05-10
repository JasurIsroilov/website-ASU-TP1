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
		
		if(isset($_POST['skan'])){
			echo $_POST['skan'];
		}
		
		echo("<div class='dataform'>
						<form name='skanform' action='rcv.php' method='POST'>
							<center><h2>Сканер штрихкодов</h2></center>
							<input type='text' name='skan' placeholder='Сканер' onChange='document.skanform.submit();'>
						</form>
					</div>");
		$_SESSION['error'] = "";
		
		include ("footer.php");

	?>
</body>
</html>