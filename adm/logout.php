<?php
session_start();

//ambil nilai
require("../inc/config.php");
require("../inc/fungsi.php");

nocache;

//hapus session
session_unset();
session_destroy();

//re-direct
$ke = "$sumber/admin/index.php";
xloc($ke);
exit();
?>