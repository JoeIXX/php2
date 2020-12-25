<?php
error_reporting(0);
session_start();
if(!isset($_SESSION[id]))//判斷
{
    echo "請輸入帳號密碼";  //錯誤執行
    echo "<meta http-equiv='refresh' content='3 ;url=login.html''>"; //回到login.html
}
else
{
    $conn=mysqli_connect("localhost","root","","mydb"); //連接至資料庫
    $sql="update bulletin set title='{$_POST[title]}', content='{$_POST[content]}'
    , type={$_POST[type]}, time='{$_POST[time]}' where bid={$_POST[bid]}"; //放入資料
    //echo $sql
    if(!mysqli_query($conn, $sql)) //判斷
        echo "修改佈告錯誤";   //錯誤執行
    else
        echo "修改佈告成功";   //正確執行
    
    echo "<meta http-equiv='refresh' content='3 ;url=bulletin.php''>"; //回到bulletin.html
}

?>