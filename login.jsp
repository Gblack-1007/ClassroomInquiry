<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
    <title>Web校园易借系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/signin.css">
    <script src='js/jquery-1.9.1.js'></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    
 <script type="text/javascript">
 	
 	function dialog(){ 
     	$("#mymodal").modal("toggle");
   	};
   	
    function login(){  
      var userName=document.getElementById("username").value;  
      var pwd=document.getElementById("password").value;  
      if(userName==""){  
            document.getElementById("dialogs").innerHTML="<h3>用户账号不能为空！</h3>";
      		dialog();
      }else if(pwd==""){  
            document.getElementById("dialogs").innerHTML="<h3>用户密码不能为空！</h3>";
      		dialog();
      }else if(userName.length<6||userName.length>20){  
            document.getElementById("dialogs").innerHTML="<h3>用户名长度应在6到20个字符之间！</h3>";
            dialog();
      }else if(pwd.length<6||pwd.length>20){  
            document.getElementById("dialogs").innerHTML="<h3>密码或重复密码长度应在6到20个字符之间！</h3>";
            dialog();
      }      
     };
</script>
</head>
<body> 

	<div class="modal" id="mymodal" tabindex="-1">
    <div class="modal-dialog">
    	<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title">亲，您好</h4>
			</div>
			<div class="modal-body" id="dialogs">
				<p></p>
			</div>
			<div class="modal-footer">
				<button type="button" data-dismiss="modal" style="color: #FFFFFF;background-color:#FB8F02; text-align:center;
            	  padding:10px;border: 1px solid #dedede;-moz-border-radius: 15px;-webkit-border-radius: 15px;  border-radius:15px;vertical-align:middle;">我知道了
            	</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->


    <div class="container">
        <div class="" id="login-wrapper">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo-login">
                        <h1>Web校园易借系统
                            <span>v1.0</span>
                        </h1>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box"> 
                    	<form action="index" method="post">
                            <div class="form-group">
                                <label for="inputUsernameEmail">学号</label>
                                <input type="text" id="username" name="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="inputPassword">密码</label>
                                <input type="password" id="password" name="password" class="form-control">
                            </div>
                            <div class="checkbox pull-left">
                                <label><input type="checkbox">记住用户名</label>
                            </div>
                            ，
                            <button class="btn btn btn-primary pull-right" type="submit" onclick="login()">登 录</button>
                        </form>
                           <div class="row-block">
	                       		 <div class="row"></div>
                       		 </div>
                       </div>
            </div>
        </div>
 		<p>&nbsp;</p>
        <div style="text-align:center;margin:0 auto;">
            <h6 style="color:#fff;">Copyright(C)2020 ClassroomInquiry.com All Rights Reserved<br />
				四个臭皮匠  版权所有</h6>
        </div>
    </div>
    <div id="test1" class="gmap3"></div>
</body>
</html>

