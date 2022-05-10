<?php

session_start();

require('fpdf/fpdf.php');
$pdf=new FPDF();
$pdf->AddFont('TimesNewRomanPSMT', '', '5eaaf5b2054a9ced24525c8fbe3bebfa_times.php');
$pdf->AddPage();
$pdf->Image('fpdf/mmap.png', 0, 0, 210, 297);
$pdf->SetFont('TimesNewRomanPSMT', '', 10); 

include "connect.php";

//$massiv = $_POST[name];

//$sem = implode (',', $massiv);


$select = "SELECT oper_id, oper_name
		FROM operations
		
		ORDER BY oper_id " ;
	//WHERE oper_id IN (".$sem.")			
$s = OCIParse($c , $select); 
OCIExecute($s , OCI_DEFAULT); 


$j=0;
$i=1;
$pdf->Text(10, 67+round($j*7.4), $i);
while (OCIFetch($s)){
	$pdf->Text(10, 67+round($j*7.4), $i);
	$ope_id = OCIResult($s , "OPER_ID");
	$ope_type =ucfirst(strtolower( OCIResult($s , "OPER_NAME")));
	//$ope_cost = ucfirst(strtolower(OCIResult($s , "OPER_COST")));
	//$ope_dur = ucfirst(strtolower(OCIResult($s , "OPER_DUR")));
	$pdf->Text(27, 67+round($j*7.4), $ope_type);
	//$pdf->Text(160, 67+round($j*7.4), $ope_dur);
	//$pdf->Text(178, 67+round($j*7.4), $ope_cost);
	$pdf->Ln(); 
	$i++;
	$j++;
	if($j>26){
		$pdf->AddPage();
		$pdf->Image('mmap.png', 0, 0, 210, 297);
	$j=0;
	}
}

$pdf->Output(); 
$_SESSION['error'] = "PDF успешно сгенерирован!";
include "disconnect.php";
header ('Location: root.php?nav='.$_GET['nav']);
?>