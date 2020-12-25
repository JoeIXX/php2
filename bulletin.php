<?php
    
    error_reporting(0);
    session_start();
    if(!isset($_SESSION["id"])) //判斷有無登入系統
    {
        echo"請登入系統";        //無登入執行;
        echo "<meta http-equiv='refresh' content='3;url=login.html''>";
    }else                       //有登入執行;
        echo "歡迎{$_SESSION['id']}登入 [<a href = logout.php>登出</a>]<p>[<a href = bulletin_add_form.php>新增佈告</a>]<p>" ; 
    
        $conn=mysqli_connect("localhost" , "root" , "" , "mydb");
        $result=mysqli_query($conn, "select * from bulletin");
        echo "<table border=2><tr><td>佈告操作</td><td>佈告編號</td><td>佈告類別</td><td>標題</td><td>佈告內容</td><td>發佈時間</td></tr>"; // 表格格式
        while   ($row = mysqli_fetch_array($result))
        {
        echo " <tr> <td> ";
        echo "<a href=bulletin_edit_form.php?bid={$row[bid]}>修改</a> <a href=delete.php?bid={$row[bid]}>刪除</a>"; //表格內容
        echo "</td> <td>";
        echo $row[bid]; //表格內容
        echo " </td> <td> " ;    
        echo $row[type]; //表格內容
        echo " </td> <td> "; 
        echo $row[title]; //表格內容
        echo " </td> <td>  "; 
        echo $row[content]; //表格內容
        echo "  </td> <td> " ; 
        echo $row[time]; //表格內容
        echo "</td></tr> ";

        }
    echo "</table>";
    
   

?>