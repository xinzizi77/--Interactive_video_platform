<?php
header("Content-Type:text/html;charset=utf-8");
session_start();
$act=$_POST['act'];
require_once("connection.php");
if($act=='logout'){
    $_SESSION=[];
    session_destroy();
    $ret = ["code" => 1,"msg" =>"退出成功"];
    echo json_encode($ret,JSON_UNESCAPED_UNICODE);
} else {
    $user_email=$_POST['user_email'];
    $user_password=$_POST['user_password'];
    if($user_email){
        $sql="select * from user where user_email='{$user_email}' and user_password='{$user_password}'";
        $result=mysqli_query($con,$sql);
        if($user_password){
            if($act=='login'){
                if(mysqli_num_rows($result)==1){
                    $row=mysqli_fetch_assoc($result);
                    $_SESSION['user_name']=$row["user_name"];
                    $_SESSION['isLogin']=1;
                    $ret = ["code" => 1,"user_name" =>$row["user_name"],"user_type"=>$row["user_type"]];
                    echo json_encode($ret,JSON_UNESCAPED_UNICODE);
                }else{
                    $ret = ["code" => 0,"msg" =>"密码错误"];
                    echo json_encode($ret,JSON_UNESCAPED_UNICODE);
                }
            }         
        }else{
            echo "<script>alert('请输入密码');</script>";        
        }
    }else{
        echo "<script>alert('请输入邮箱地址');</script>";    
    }
}

