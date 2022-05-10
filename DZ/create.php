<?php
error_reporting( E_ERROR );
		
session_start();

if(!isset($_SESSION['auth']) || $_SESSION['auth'] == false){
	header ('Location: index.php');
	exit();
}

$table = $_SESSION['table'];

include ("connect.php");
	
$select = "INSERT INTO ".$table['table']." (";
for($i = 1; $i < $table['num']; $i++){
	$select = $select.($i == 1 ? "" : ", ").$table['data'][$i];
}
$select = $select.") VALUES (";
for($i = 1; $i < $table['num']; $i++){
	if($table['dtype'][$i] == 'number'){
		$select = $select.($i == 1 ? "" : ", ").($_POST[$table['data'][$i]] == "" ? '0' : $_POST[$table['data'][$i]]);
	}
	else{
		$select = $select.($i == 1 ? "'" : ", '").$_POST[$table['data'][$i]]."'";
	}
}
$select = $select.")";
echo($select);
$s = OCIParse($c , $select);
OCIExecute($s , OCI_DEFAULT);

include ("disconnect.php");
header ('Location: root.php?nav='.$_GET['nav']);
?>