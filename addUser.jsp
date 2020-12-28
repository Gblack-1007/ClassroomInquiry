<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link href="css/global.css" rel="stylesheet" type="text/css" />
<script src='js/jquery-1.9.1.js'></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.js"></script>
<html>
  <head>
    <title>用户信息</title>   
 </head>
  <body>
  	<form action="addUser" method="post">
  		<table class="inputtable" width="100%" style="margin-left:15px;margin-top: 10px;">
  			<tr>
  				<td class="leftlabel" style="text-align:center">用户ID</td><td><input type="text" name="id" value="系统选定"  disabled="true"></td>
  				<td class="leftlabel" style="text-align:center">用户学号</td><td><input type="text" name="stu_id"></td>
  			</tr>
  			<tr>
  				<td class="leftlabel" style="text-align:center">用户密码</td><td><input type="text" name="pwd"></td>
  				<td class="leftlabel" style="text-align:center">用户权限</td><td><input type="text" name="jurisdiction"></td>
  			</tr>
  			<tr>
  				<td class="leftlabel" style="text-align:center">用户姓名</td><td><input type="text" name="name"></td>
  				<td class="leftlabel" style="text-align:center">用户学院</td><td><input type="text" name="department"></td>
  			</tr>
  			<tr>
  				<td class="leftlabel" style="text-align:center">用户年级</td><td><input type="text" name="grade"></td>
  				<td class="leftlabel" style="text-align:center">用户专业</td><td><input type="text" name="major"></td>
  			</tr>
  			<tr>
  				<td class="leftlabel" style="text-align:center">用户性别</td><td><input type="text" name="sex"></td>
  				<td class="leftlabel" style="text-align:center">用户邮箱</td><td><input type="text" name="email"></td>
  			</tr>
  			<tr>
  				<td class="leftlabel" style="text-align:center">确定添加</td><td><input type="submit" value="确定" style="background-color:#9ab5f1"></td>
  				<td class="leftlabel" style="text-align:center">取消添加</td><td><input type="reset" value="取消" style="background-color:#9ab5f1"></td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>
