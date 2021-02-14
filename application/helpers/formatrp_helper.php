<?php

function format_rp($a)
{
	if (!is_numeric($a)) return NULL;
	$jumlah_desimal = "0";
	$pemisah_desimal = "";
	$pemisah_ribuan = ".";
	$angka = "Rp " . number_format($a, $jumlah_desimal, $pemisah_desimal, $pemisah_ribuan) . ",00";
	return $angka;
}
function format_angka($a)
{
	$angka = preg_replace("/[^0-9]/", "", $a);
	return $angka * 1;
}

function dd($arr)
{
	echo "<pre>" . print_r($arr, true) . "</pre>";
}
