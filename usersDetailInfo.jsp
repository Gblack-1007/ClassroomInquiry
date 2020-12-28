<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link href="/ClassroomInquiry/css/global.css" rel="stylesheet" type="text/css" />
<script src='/ClassroomInquiry/js/jquery-1.9.1.js'></script>
<script src="/ClassroomInquiry/js/jquery.min.js"></script>
<script src="/ClassroomInquiry/js/jquery.js"></script>
<html>
  <head>
    <title>用户信息</title>  
 </head>
  <body>
  	<form action="usersAction?type=tousers" method="post">
  		<table class="inputtable" width="100%" style="margin-left:15px;margin-top: 10px;">
  			<tr>
  				<td class="leftlabel" style="text-align:center">学号</td><td><input type="text" name="usersIds" value=${userInfo.sid}  disabled="true"></td>
  				<td class="leftlabel" style="text-align:center">姓名</td><td><input type="text" name="usersAccounts" value=${userInfo.name} disabled="true"></td>
  			</tr>
  			<tr>
  				<td class="leftlabel" style="text-align:center">院系</td><td><input type="text" name="usersPasswords" value=${userInfo.department} disabled="true"></td>
  				<td class="leftlabel" style="text-align:center">专业</td><td><input type="text" name="usersNames" value=${userInfo.major} disabled="true"></td>
  			</tr>
  			<tr>
  				<td class="leftlabel" style="text-align:center">年级</td><td><input type="text" name="usersMailBoxs" value=${userInfo.grade} disabled="true"></td>
  				<td class="leftlabel" style="text-align:center">性别</td><td><input type="text" name="usersPhones" value=${userInfo.sex}  disabled="true"></td>
  			</tr>
  			<tr>
  				<td class="leftlabel" style="text-align:center">邮箱</td><td><input type="text" name="usersEmail" value=${userInfo.email} disabled="true"></td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>
