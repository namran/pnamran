<?php
$dbhost='localhost';
$dbname='pdatabase';
$dbuser='pdatauser';
$dbpass='somePAssHere';
$db = mysql_connect($dbhost,$dbuser,$dbpass);
mysql_select_db($dbname,$db);
return $db;
?>
