<?php
session_start();
$file="test.txt";
$open=fopen($file, "r");
$c=OCILogon("morin", "morin", "orcl");
if(!c) {
	echo "Невозможно подключиться к базе: ".var_dump(OCIError());
	die();
}
$_SESSION["name"]="";
$_SESSION["user"]="";
while(($result=fgetcsv($open,100)) !== FALSE) {
	$sql="INSERT INTO personal (per_name, per_surname, per_secname, per_phone, per_adr)
				VALUES ('".$result[0]."','".$result[1]."','".$result[2]."','".$result[3]."','".$result[4]."')";
	$s=OCIParse($c,$sql);
	OCIExecute($s);
}
OCICommit($c);
OCILogoff($c);
fclose($open);
?>