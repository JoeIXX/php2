<?php
    error_reporting(0);
    session_start();
    //將session清空
    //session_destroy(); //伺服器上所有session variable清空,要注意
    unset($_SESSION["id"]);
    echo "登出中. . . . .";
    echo "<meta http-equiv=REFRESH CONTENT='2;url=login.html'>";
?>