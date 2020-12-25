<?php
error_reporting(0);
session_start();
if(!isset($_SESSION[id])) //判斷
{
    echo "請輸入帳號密碼"; //錯誤執行
    echo "<meta http-equiv='refresh' content='3 ;url=login.html''>"; //跳回login.html
}
else                      //成功執行
{
    $conn=mysqli_connect("localhost","root","","mydb");//連接資料庫
    $sql="insert into bulletin(title, content, type, time) values('{$_POST[title]}',
        '{$_POST[content]}',{$_POST[type]},'{$_POST[time]}')"; //放入資料
    //echo $sql
    if(!mysqli_query($conn, $sql)) //判斷
        echo "新增佈告錯誤"; //錯誤執行
    else
        echo "新增佈告成功"; //成功執行
    
    echo "<meta http-equiv='refresh' content='3 ;url=bulletin.php''>";//回到bulletin.php
}

?>