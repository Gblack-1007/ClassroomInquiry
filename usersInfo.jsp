<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link href="css/global.css" rel="stylesheet" type="text/css" />
<html>
  <head>      
    <title>用户管理</title>
  </head> 
  <body>
  		<form action="userInformationQuery?type=queryOne" method="post">
    	<table class="inputtable" width="100%" style="margin-left:40px;">
            <tr> 
                <td class="leftlabel" style="width:100px;margin-left:30px;">用户学号：</td><td style="width:100px;"><input type="text" name="stu_id"></td>
  				<td>
  					<input type="submit" value="确定查询" style="background-color:#9ab5f1"><a href="userInformationQuery?type=queryAll"><input type="button" value="显示全部" style="background-color:#9ab5f1"></a>
  				</td>
  				</tr>
  			</table>			
  			</form>
  		<table class="inputtable" width="95%" style="margin-left:15px;margin-top:10px;">
			<tr>
			    <td class="leftlabel" style="text-align:center">用户学号</td>
			    <td class="leftlabel" style="text-align:center">用户密码</td>
				<td class="leftlabel" style="text-align:center">用户权限</td>
				<td class="leftlabel" style="text-align:center">用户姓名</td>
				<td class="leftlabel" style="text-align:center">用户学院</td>
				<td class="leftlabel" style="text-align:center">用户年级</td>
				<td class="leftlabel" style="text-align:center">用户专业</td>
				<td class="leftlabel" style="text-align:center">用户性别</td>
				<td class="leftlabel" style="text-align:center">用户邮箱</td>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr>	
					<td style="text-align:center">${list.user.stu_id}</td>
					<td style="text-align:center">${list.user.pwd}</td>
					<td style="text-align:center">
						<c:if test="${list.user.jurisdiction == 0}">
							普通权限
						</c:if>
						<c:if test="${list.user.jurisdiction == 1 }">
							管理员权限
						</c:if>	
					</td>
					<td style="text-align:center">${list.student.name}</td>
					<td style="text-align:center">${list.student.department}</td>
					<td style="text-align:center">${list.student.grade}</td>
					<td style="text-align:center">${list.student.major}</td>
					<td style="text-align:center">${list.student.sex}</td>
					<td style="text-align:center">${list.student.email}</td>
				</tr>
			</c:forEach>
		</table>
  </body>
</html>
