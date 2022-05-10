<?php
error_reporting( E_ERROR );
		
session_start();

$usr_login = $_POST['login'];
$usr_pass = $_POST['pass'];

include ("connect.php");

$select="SELECT per.per_name, per.per_surname, per.per_post
					FROM personalization p,
							 personal per
					WHERE p.pers_login = '".$usr_login."' 
						AND p.pers_password = '".$usr_pass."'
						AND per.per_id = p.pers_per_id";

$s = OCIParse($c , $select);
OCIExecute($s , OCI_DEFAULT);

while(OCIFetch($s)) {
	echo('1');
	$_SESSION['name'] = OCIResult($s, "PER_NAME");
	$_SESSION['surname'] = OCIResult($s, "PER_SURNAME");
	$_SESSION['post'] = OCIResult($s, "PER_POST");
	$_SESSION['auth'] = true;
	echo('2');
	include ("disconnect.php");
	header ('Location: root.php');
	exit();
}
echo('3');
$_SESSION['error'] = "Пользователь не найден";
$_SESSION['auth'] = false;
include ("disconnect.php");
header ('Location: index.php');

?>