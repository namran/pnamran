<?php
 include ('inc/db_config.php');
 include ('inc/p_form.php');
 $f =  new pForm();
 header("Pragma: no-cache");
 if ($_GET['pagename'] != '' ) {
   $pgid =  mysql_escape_string($_GET['pagename']);
   $sqls = "SELECT name,description,detail,last_updated FROM `pages` where name = '".$pgid."'";
   $sql  = mysql_query ($sqls,$db);
   $result = mysql_fetch_array( $sql,MYSQL_ASSOC );
 } else {
 $f->redirect_to("http://p.namran.net/home.html");
}
?>
<html>
<head>
<meta name="robots" content="noindex,nofollow">
<title> P @ namran.net</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
<style type="text/css" media="screen">
<!-- @import url( css/style.css ); -->
</style>
</head>
<body>
<div id="header">
  <?php include('parts/header.php'); ?>
</div>
<div id="body">
<?php
if ( $result['name'] != '') { 
 echo $result['detail'];
}else {
 echo $_GET['pagename'] ."Not Found ";
}
?>
</div>
<div id="footer">
  <?php include('parts/footer.php'); ?>
</div>
</body>
</html>
