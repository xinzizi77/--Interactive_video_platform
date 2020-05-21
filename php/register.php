<?php
header("Content-Type:text/html;charset=utf-8");
// ----------把传过的数据入库--------------
require_once('connection.php');
// print_r($_POST);//返回的是一个数组
//入库前要对所有的信息进行校验
if(!(isset($_POST['user_name'])&&(!empty($_POST['user_name'])))){//判断是否存在该内容和是否为空
    echo "<script>alert('请输入昵称');</script>";
}
if(!(isset($_POST['user_email'])&&(!empty($_POST['user_email'])))){//判断是否存在该内容和是否为空
    echo "<script>alert('请输入正确的邮箱地址');</script>";
}
if(!(isset($_POST['user_password'])&&(!empty($_POST['user_password'])))){//判断是否存在该内容和是否为空
    echo "<script>alert('请输入密码');</script>";
}
$user_name=$_POST['user_name'];
$user_email=$_POST['user_email'];
$user_password=$_POST['user_password'];

$search = "select `user_email` from user where user_email='$user_email'";
$res=mysqli_query($con,$search);
if(mysqli_num_rows($res)>0){
    $ret = ["code" => 0,"msg" =>'邮箱已被注册'];
    echo json_encode($ret,JSON_UNESCAPED_UNICODE);
    return;
}
$insert="insert into user(user_name,user_email,user_password) values('$user_name','$user_email','$user_password')";
if(mysqli_query($con,$insert)){
    $ret = ["code" => 1,"msg" =>'success'];
    echo json_encode($ret,JSON_UNESCAPED_UNICODE);
}else{
    echo mysqli_error($con);      
}
?>