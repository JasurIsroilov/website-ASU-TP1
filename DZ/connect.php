<?php 
error_reporting( E_ERROR );
$c=OCILogon("scott", "tiger", "orcl"); 

if (!$c) { 
	die("<h3 align='center'>Ошибка подключения к базе данных!</h3>"); 
	echo "Невозможно подключится к базе: " . var_dump( OCIError() ); 
}
?>