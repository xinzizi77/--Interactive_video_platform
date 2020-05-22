<?php
session_start();
if(!isset($_SESSION['isLogin'])||$_SESSION['isLogin']!=1||!isset($_SESSION['user_id'])){
    $ret = ["code" => 0,"msg" =>'未登录'];
    echo json_encode($ret,JSON_UNESCAPED_UNICODE);
} else {
    $ret = ["code" => 1,"user_id" =>$_SESSION['user_id'],"user_name" =>$_SESSION['user_name']];
    echo json_encode($ret,JSON_UNESCAPED_UNICODE);
}
?>