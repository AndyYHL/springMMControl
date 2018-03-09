<%@ page language="java" contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GIS系统</title>
    <link rel="stylesheet" href="css/common.css">
    <style>
        body,html{width: 100%;height: 100%;}
        body{background: url("../resources/totalcont/images/login_bg.png") no-repeat;background-size: cover}
        .loginBox{width: 430px;height: 430px;background: url("../resources/totalcont/images/loginBox.png") no-repeat;position: absolute;left: 50%;margin-left: -215px;top: 27%}
        .loginBox input{width: 288px;height: 42px;border:none;text-indent: 44px;border-radius: 5px;display: block;margin: 0 auto 21px;color: #FFF;}
        .loginBox input:focus{border: 1px solid #ffffff;}
        .loginBox input.userName{background: url("../resources/totalcont/images/userName.png") no-repeat 13px center,#3b3c3f;margin-top: 163px;}
        .loginBox input.psw{background: url("../resources/totalcont/images/Psw.png") no-repeat 14px center,#3b3c3f}
        *::-webkit-input-placeholder {
            color: #FFF;
        }
        button{width: 160px;height: 42px;line-height: 42px;display: block;margin: 0 auto;color: #444444;background: #ffcf11;font-size: 16px;border: none;border-radius: 42px;cursor: pointer;margin-top: 42px}

    </style>
    <script type="text/javascript" src="../resources/js/jquery/jquery-2.1.4.min.js"></script>
</head>
<body>
<div class="loginBox">
    <input placeholder="用户名" class="userName" type="text" name="loginEmail" id="loginEmail" value="aaa" >
    <input placeholder="密码" class="psw" type="password" name="loginPass" id="loginPass" value="123123">
    <button class="subLogin">登 录</button>
</div>
</body>
</html>
<script>
    $(document).ready(function () {
        $(".subLogin").click(function () {
            var username = $("#loginEmail").val();
            var upwd = $("#loginPass").val();
            if(username == ""){
                alert("用户名不能为空");
            }else if(upwd == ""){
                alert("密码不能为空");
            }else{
                $.ajax({
                    type: 'POST',
                    url: '/api/conl/login/userLogin',
                    contentType: "application/json;charset=utf-8",
                    dataType: 'json',
                    data: JSON.stringify(
                        {
                            "data": {"username": username,"upwd":upwd},
                            "info":{"timestamp":"1234521451123", "checkcode":"B72AE535023CFECCCBB668701B86FEA2"}
                        }
                    ),
                    beforeSend: function (request) {
                        request.setRequestHeader("Content-Type", "application/json");
                        request.setRequestHeader("CCAppTOKEN", "c941c9a06586f8da152018e5d005771b");
                    },
                    success: function (data) {
                        if(data.info.status == 200){
                            //登录
                            window.location.href = "/";
                        }else{
                            alert(data.info.message);
                        }
                    },
                    error: function () {
                        alert('Ajax error!');
                    }
                });
            }
        });
    });
</script>

