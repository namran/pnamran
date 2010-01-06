<?php
include ('inc/db_config.php');
if ($_REQUEST['file'] != '' ) {
   	$file =  mysql_escape_string($_REQUEST['file']);
   	$sqls = "SELECT image_name,image_id,page_name,img FROM `images` where image_name LIKE '".$file."'";
   	$sql  = mysql_query ($sqls,$db);
   	$result = mysql_fetch_array( $sql,MYSQL_ASSOC);
  	mysql_close($db) or die ("Cannot close");
}
if ($_REQUEST['file'] != '') {
    header("Content-type: image/jpeg");
    echo $result['img'];
    exit ();
} else {
  header ("Content-type: image/jpeg");
	echo "";
}
?>
