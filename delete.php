<?php
    error_reporting();
    $conn=mysqli_connect("localhost","root","","mydb"); // 連接至資料庫

    $sql="delete from bulletin where bid = {$_GET[bid]}";

    if(!mysqli_query($conn, $sql)) //判斷
    echo "刪除錯誤"; 
    else
    {
        echo "刪除成功；回前頁中. . .";
        echo "<meta http-equiv='refresh' content='3;url=bulletin.php'>"; //回到bulletin.php
    }
?>