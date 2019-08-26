<?php 
header('Content-type: application/zip');
/* It will be called test.zip */
header("Content-Disposition: attachment; filename=test.zip");
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
/* path to outside root directory */
readfile('/var/www/vhosts/materlu.com/trololo.zip');
exit; 

?>