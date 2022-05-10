<?php
error_reporting( E_ERROR );
		
session_start();

if(!isset($_SESSION['auth']) || $_SESSION['auth'] == false){
	header ('Location: index.php');
	exit();
}

$table = $_SESSION['table'];

include ("connect.php");
	
$select = "UPDATE ".$table['table']." SET ";
$n = 1;
for($i = 1; $i < $table['num']; $i++){
	if($_POST[$table['data'][$i]] != ""){
		if($table['dtype'][$i] == 'number'){
			$select = $select.($n == 1 ? "" : ", ").$table['data'][$i]."=".$_POST[$table['data'][$i]];
		}
		else{
			$select = $select.($n == 1 ? "" : ", ").$table['data'][$i]."='".$_POST[$table['data'][$i]]."'";
		}
		$n++;
	}
}
$select = $select."WHERE ".$table['data'][0]."=".$_POST[$table['data'][0]];

$s = OCIParse($c , $select);
OCIExecute($s , OCI_DEFAULT);

include ("disconnect.php");
header ('Location: root.php?nav='.$_GET['nav']);
?>