<?php

$postAccess['administrator'] = 						1;


//																				R W U D
$actAccess[0]['equipment'] = 				array(0,0,0,0);
$actAccess[0]['personal'] = 				array(0,0,0,0);
$actAccess[0]['operations'] = 			array(0,0,0,0);
$actAccess[0]['docs'] = 						array(0,0,0,0);
$actAccess[0]['dedocs'] = 					array(0,0,0,0);
$actAccess[0]['acwoproduct'] = 			array(0,0,0,0);
$actAccess[0]['acdefproduct'] = 		array(0,0,0,0);
$actAccess[0]['defproduct'] = 			array(0,0,0,0);
$actAccess[0]['woproduct'] = 				array(0,0,0,0);
$actAccess[0]['personalization'] =	array(0,0,0,0);

$actAccess[1]['equipment'] = 				array(1,1,1,1);
$actAccess[1]['personal'] = 				array(1,1,1,1);
$actAccess[1]['operations'] = 			array(1,1,1,1);
$actAccess[1]['docs'] = 						array(1,1,1,1);
$actAccess[1]['dedocs'] = 					array(1,1,1,1);
$actAccess[1]['acwoproduct'] = 			array(1,1,1,1);
$actAccess[1]['acdefproduct'] = 		array(1,1,1,1);
$actAccess[1]['defproduct'] = 			array(1,1,1,1);
$actAccess[1]['woproduct'] = 				array(1,1,1,1);
$actAccess[1]['personalization'] =	array(1,1,0,0);

$actAccess[2]['equipment'] = 				array(1,1,1,1);
$actAccess[2]['personal'] = 				array(1,1,1,1);
$actAccess[2]['operations'] = 			array(1,1,1,1);
$actAccess[2]['docs'] = 						array(1,1,1,1);
$actAccess[2]['dedocs'] = 					array(1,1,1,1);
$actAccess[2]['acwoproduct'] = 			array(1,1,1,1);
$actAccess[2]['acdefproduct'] = 		array(1,1,1,1);
$actAccess[2]['defproduct'] = 			array(1,1,1,1);
$actAccess[2]['woproduct'] = 				array(1,1,1,1);
$actAccess[2]['personalization'] =	array(1,1,1,1);

$access = $actAccess[$postAccess[strtolower($_SESSION['post'])]][$table['table']];
?>