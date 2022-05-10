<?php
error_reporting( E_ERROR );
		
session_start();

if(!isset($_SESSION['auth']) || $_SESSION['auth'] == false){
	header ('Location: index.php');
	exit();
}

$table = $_SESSION['table'];

include ("connect.php");
	
$select = "DELETE FROM ".$table['table']." WHERE ".$table['data'][0]."=".$_POST[$table['data'][0]];

$s = OCIParse($c , $select);
OCIExecute($s , OCI_DEFAULT);

include ("disconnect.php");
header ('Location: root.php?nav='.$_GET['nav']);
?>