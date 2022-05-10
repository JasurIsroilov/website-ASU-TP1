<html>
<head>
	<meta charset="utf-8">
	<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body class='rootbody'>
	<?php
		error_reporting( E_ERROR );
		
		session_start();
		
		if(!isset($_SESSION['auth']) || $_SESSION['auth'] == false){
			header ('Location: index.php');
			exit();
		}
		
		$nav_options = array('equipment', 'personal','operations','docs','deDocs','acWoProduct','acDefProduct','woProduct','defProduct','personalization');
		$nav = 0;
		if(isset($_GET["nav"])){
			$nav = $_GET["nav"];
		}
		
		echo("<table id='roottable'><tr><td id='head' colspan='2'>
						<div id='userinfo'>
							<h1>DETONATOR CLOCK</h1>
							<a href='logoff.php'>Выйти</a>
							<div>Добро пожаловать!<br>".$_SESSION['name']." ".$_SESSION['surname']."</div>
						</div>
					</td></tr><tr class='v_align_top'><td id='nav'>");
		
		$naviter = 0;
		foreach($nav_options as $el){
			echo("<a href='root.php?nav=".$naviter ."' ".($nav==$naviter ? "class='nav_sel'": "")."><span>".$el."</span></a>");
			$naviter = $naviter + 1;
		}
		
		echo("</td><td id='content'>");
		
		include ($nav_options[$nav].".php");
		include ("actAccess.php");
		
		echo("<div class='block'><div id='err_msg' class='error'>".$_SESSION['error']."</div>");
		$_SESSION['error'] = "";
		
		
		if($access[0] == 0){
			echo("Недостаточно прав для просмотра содержимого таблицы ".$table['table']."</div>");
		}
		else{
			echo("</div>");
			
			include ("connect.php");

			$select = "SELECT ".$table['data'][0];
			for($i = 1; $i < $table['num']; $i++){
				$select = $select.", ".$table['data'][$i];
			}
			$select = $select." FROM ".$table['table'];

			$s = OCIParse($c , $select);
			OCIExecute($s , OCI_DEFAULT);

			echo("<div class='tb_border'><table class='tb_data'><tr>");
			for($i = 0; $i < $table['num']; $i++){
				echo("<td>".$table['data'][$i]."</td>");
			}
			echo("</tr>");

			while(OCIFetch($s)) {
				echo("<tr onclick='copyValues(this);'>");
				for($i = 0; $i < $table['num']; $i++){
					echo("<td>".OCIResult($s, strtoupper($table['data'][$i]))."</td>");
				}
				echo("</tr>");
			}

			echo("</table></div>");

			include ("disconnect.php");
		}
		
		echo("</div><td id='editform'><form method='POST'>");
		if($access[0] == 1){
			if($access[1] != 0 || $access[2] != 0 || $access[3] != 0){
				for($i = 0; $i < $table['num']; $i++){
					echo("<div class='row_input'><input id='".$table['data'][$i]."' type='".$table['dtype'][$i]."' name='".$table['data'][$i]."' placeholder='".$table['data'][$i]."' ".($table['dtype'][$i] == 'date' ? "onfocus='if(this.value == \"\") {var today = new Date(); var dd = String(today.getDate()).padStart(2, \"0\"); var mm = String(today.getMonth() + 1).padStart(2, \"0\"); var yyyy = today.getFullYear(); this.value = dd + \".\" + mm + \".\" + yyyy;}'" : "")."></div>");
				}
			}
		}
		echo("<input type='button' value='Создать' ".($access[1] == 1 ? "onClick='this.form.action=\"create.php?nav=".$nav."\"; this.form.submit();'" : "disabled").">
						<input type='button' value='Изменить' ".($access[2] == 1 ? "onClick='if(this.form.elements[0].value == \"\") { document.getElementById(\"err_msg\").innerHTML = \"необходимо заполнить поле *_id\"; return 0; } this.form.action=\"update.php?nav=".$nav."\"; this.form.submit();'" : "disabled").">
						<input type='button' value='Удалить' ".($access[3] == 1 ? "onClick='if(this.form.elements[0].value == \"\") { document.getElementById(\"err_msg\").innerHTML = \"необходимо заполнить поле *_id\"; return 0; } this.form.action=\"drop.php?nav=".$nav."\"; this.form.submit();'" : "disabled").">
						".($table['table'] == 'operations' ? "<input id='btn_pdf' type='button' value='Создать PDF' onClick='this.form.action=\"generate_pdf.php?nav=".$nav."\"; this.form.submit();'>" : "")."
					</form>");
		echo("</td></tr></table>");
		
		include ("footer.php");

	?>
</body>
</html>