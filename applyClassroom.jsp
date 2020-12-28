<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>会议室预定界面</title>
    <link rel="stylesheet" type="text/css" href="/ClassroomInquiry/themes-data/default/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="/ClassroomInquiry/themes-data/icon.css"/>
    <link href="css/global.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/ClassroomInquiry/js-data/jquery.min.js"></script>
    <script type="text/javascript" src="/ClassroomInquiry/js-data/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/ClassroomInquiry/js-data/easyui-lang-zh_CN.js"></script>
  </head>
  <body>
  		<h1  align="center">教室预定</h1>
  		<div>
  			<form action="" method="post">
  				 <table class="inputtable" width="100%" style="margin-left: 20px;">
  				 	<tr>
  				 		<td class="leftlabel" style="text-align:center">场地编号ID:</td><td style="width: 165px;"><input type="text" name="title" value="${classroomInfo.c_id }" disabled="true"></td>
  				 		<td class="leftlabel" style="text-align:center">场地名称:</td><td style="width: 150px;"><input type="text" name="title" value="${classroomInfo.c_name}" disabled="true"></td>
  				 	</tr>
  				 	<tr>
  				 		<td class="leftlabel" style="text-align:center">校区:</td><td style="width: 150px;"><input type="text" name="title" value="${classroomInfo.c_location}" disabled="true"></td>
  				 		<td class="leftlabel" style="text-align:center">场地类别:</td><td style="width: 40px;"><input type="text" name="title" value="${classroomInfo.c_type }" disabled="true"></td>
  				 	</tr>
  				 	<tr>
  				 		<td class="leftlabel" style="text-align:center">座位数:</td><td style="width: 40px;"><input type="text" name="title" value="${classroomInfo.c_seat}" disabled="true"></td>
  				 		<td class="leftlabel" style="text-align:center">场地借用类型:</td><td style="width: 40px;"><input type="text" name="title" value="${classroomInfo.c_borrowType}" disabled="true"></td>
  				 	</tr>
  				 	<tr>
  				 		<td class="leftlabel" style="text-align:center">周次:</td><td style="width: 40px;"><input type="text" name="title" value="${c_weeks}" disabled="true"></td>
  				 		<td class="leftlabel" style="text-align:center">星期:</td><td style="width: 40px;"><input type="text" name="title" value="${c_week}" disabled="true"></td>
  				 	</tr>
  				 	<tr>
  				 		<td class="leftlabel" style="text-align:center">开始节数:</td><td style="width: 40px;"><input type="text" name="title" value="${c_begin}" disabled="true"></td>
  				 		<td class="leftlabel" style="text-align:center">结束节数:</td><td style="width: 40px;"><input type="text" name="title" value="${c_end}" disabled="true"></td>
  				 	</tr>
  				   <tr>
  				 		<td class="leftlabel">用途 :</td>
  				 		<td colspan="7"><textarea id="msg" name="msg" cols="110" rows="7"></textarea></td>
  				 		<td><input type="button" value="确定预定" onclick="apply()" style="background-color:#9ab5f1"></td>
  				 	</tr>
  				 </table>			
			
		</div>
  <script type="text/javascript">
  		function apply(){
  			var stu_id = ${user.stu_id};
  			var apply_id = ${classroomInfo.c_id};
  			var apply_msg = $("#msg").val();
  	  	  	var apply_weeks = ${c_weeks};
  	  	  	var apply_week = ${c_week};
  	  	  	var apply_begin = ${c_begin};
  	  	  	var apply_end = ${c_end};
  	  	  	$.ajax({
  	  	  		url : "apply.action",
  	  			type : "POST",
  	  			/* data : "json", */
  	  			contentType : "application/json;charset=utf-8",
  	  			//向后端传输的数据
  	  			data : JSON.stringify({
  	  			stu_id : stu_id,
  	  			apply_id : apply_id,
  	  			apply_msg : apply_msg,
  	  			apply_weeks : apply_weeks,
  	  			apply_week : apply_week,
  	  			apply_begin : apply_begin,
  				apply_end : apply_end
  	  			}),
  	  			//处理后端返回的数据
  	  			success : successFunction,
  	  			//处理失败返回的数据
  	  			error : function(result) {
  	  				alert("出错啦！！！");
  	  			}
  	  	  	});
  	  	  	function successFunction(rs){
  	  	  			if(rs!=0){
  	  	  				alert("预定成功，等待管理员审核");
  	  	  				location.href="http://39.101.194.151/:8888/ClassroomInquiry/MeetRoomShows.jsp"; 	  	  				
  	  	  			}else{
  	  	  				alert("预订失败");
  	  	  			}
  	  	  		}
  	  	  };	
  </script>
  </body>
</html>
