<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link href="/ClassroomInquiry/css/global.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/ClassroomInquiry/common/easyui/themes/default/easyui.css">  
<link rel="stylesheet" type="text/css" href="/ClassroomInquiry/common/easyui/themes/icon.css">  
<script type="text/javascript" src="/ClassroomInquiry/common/jquery.js"></script>
<script type="text/javascript" src="/ClassroomInquiry/common/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="/ClassroomInquiry/common/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="/ClassroomInquiry/common/common.js"></script>
<html>
  <head>      
    <title>申请管理</title>
    <script type="text/javascript">
    function deleteApply(id,apply_id,apply_weeks,apply_week,apply_begin,apply_end){
		$.ajax({
	  			url : "deleteApply.action",
	  			type : "POST",
	  			contentType : "application/json;charset=utf-8",
  	  		data : JSON.stringify({
  				id : id,
  				apply_id:apply_id,
  				apply_weeks:apply_weeks,
  				apply_week:apply_week,
  				apply_begin:apply_begin,
  				apply_end:apply_end
  				}),
  			success : function(result){
  				if(result !="0"){
  					alert("删除预定成功");
  				}else{
  					alert("删除预定出错");
  				}
  				location.href="http://39.101.194.151/:8888/ClassroomInquiry/UsersApplyShow.jsp";
  			},
  			error : function(result) {
					alert("删除出错");
				}
	  		})
	}
    </script>
  </head> 
  <body>
  	<div id="tt" class="easyui-tabs" style="width:1050px;height:600px;margin-left: 25px;">
		<div title="未审核">
			<table class="inputtable" width="95%" style="margin-left:15px;margin-top:10px;">
			<tr>
				<td class="leftlabel" style="text-align:center">申请人学号</td>
				<td class="leftlabel" style="text-align:center">申请人姓名</td>
				<td class="leftlabel" style="text-align:center">场地名称</td>
			    <td class="leftlabel" style="text-align:center">场地类别</td>
				<td class="leftlabel" style="text-align:center">场地借用类型</td>
				<td class="leftlabel" style="text-align:center">周次</td>
				<td class="leftlabel" style="text-align:center">星期</td>
				<td class="leftlabel" style="text-align:center">开始节数</td>
				<td class="leftlabel" style="text-align:center">结束节数</td>
				<td class="leftlabel" style="text-align:center">内容</td>
				<td class="leftlabel" style="text-align:center">审核情况</td>
			</tr>
			<c:forEach items="${examiningList}" var="examiningList">
				<tr>	
					<td style="text-align:center">${examiningList.applyMsg.stu_id}</td>
					<td style="text-align:center">${examiningList.students.name}</td>
					<td style="text-align:center">${examiningList.classroom.c_name}</td>
					<td style="text-align:center">${examiningList.classroom.c_type}</td>
					<td style="text-align:center">${examiningList.classroom.c_borrowType}</td>
					<td style="text-align:center">${examiningList.applyMsg.apply_weeks}</td>
					<td style="text-align:center">${examiningList.applyMsg.apply_week}</td>
					<td style="text-align:center">${examiningList.applyMsg.apply_begin}</td>
					<td style="text-align:center">${examiningList.applyMsg.apply_end}</td>
					<td style="text-align:center">${examiningList.applyMsg.apply_msg}</td>
					<td style="text-align:center">
					<a href="confirmApply?flag=accept&id=${examiningList.applyMsg.id}"><input type="button" onclick="" value="审核通过" style="background-color:#9ab5f1"></a>
					<a href="confirmApply?flag=refuse&id=${examiningList.applyMsg.id}"><input type="button" onclick="" value="审核不通过" style="background-color:#9ab5f1"></a>

					</td>	
				</tr>
			</c:forEach>
		</table>
		</div>
		<div title="审核通过">
			<table class="inputtable" width="95%" style="margin-left:15px;margin-top:10px;">
			<tr>
				<td class="leftlabel" style="text-align:center">申请人学号</td>
				<td class="leftlabel" style="text-align:center">申请人姓名</td>
				<td class="leftlabel" style="text-align:center">场地名称</td>
			    <td class="leftlabel" style="text-align:center">场地类别</td>
				<td class="leftlabel" style="text-align:center">场地借用类型</td>
				<td class="leftlabel" style="text-align:center">周次</td>
				<td class="leftlabel" style="text-align:center">星期</td>
				<td class="leftlabel" style="text-align:center">开始节数</td>
				<td class="leftlabel" style="text-align:center">结束节数</td>
				<td class="leftlabel" style="text-align:center">内容</td>
				<td class="leftlabel" style="text-align:center">审核情况</td>
			</tr>
			<c:forEach items="${examineSuccessList}" var="examineSuccessList">
				<tr>	
					<td style="text-align:center">${examineSuccessList.applyMsg.stu_id}</td>
					<td style="text-align:center">${examineSuccessList.students.name}</td>
					<td style="text-align:center">${examineSuccessList.classroom.c_name}</td>
					<td style="text-align:center">${examineSuccessList.classroom.c_type}</td>
					<td style="text-align:center">${examineSuccessList.classroom.c_borrowType}</td>
					<td style="text-align:center">${examineSuccessList.applyMsg.apply_weeks}</td>
					<td style="text-align:center">${examineSuccessList.applyMsg.apply_week}</td>
					<td style="text-align:center">${examineSuccessList.applyMsg.apply_begin}</td>
					<td style="text-align:center">${examineSuccessList.applyMsg.apply_end}</td>
					<td style="text-align:center">${examineSuccessList.applyMsg.apply_msg}</td>
					<td style="text-align:center">审核通过</td>	
				</tr>
			</c:forEach>
		</table>
		</div>
		<div title="审核未通过">
			<table class="inputtable" width="95%" style="margin-left:15px;margin-top:10px;">
			<tr>
				<td class="leftlabel" style="text-align:center">申请人学号</td>
				<td class="leftlabel" style="text-align:center">申请人姓名</td>
				<td class="leftlabel" style="text-align:center">场地名称</td>
			    <td class="leftlabel" style="text-align:center">场地类别</td>
				<td class="leftlabel" style="text-align:center">场地借用类型</td>
				<td class="leftlabel" style="text-align:center">周次</td>
				<td class="leftlabel" style="text-align:center">星期</td>
				<td class="leftlabel" style="text-align:center">开始节数</td>
				<td class="leftlabel" style="text-align:center">结束节数</td>
				<td class="leftlabel" style="text-align:center">内容</td>
				<td class="leftlabel" style="text-align:center">审核情况</td>
			</tr>
			<c:forEach items="${examineFaiList}" var="examineFaiList">
				<tr>	
					<td style="text-align:center">${examineFaiList.applyMsg.stu_id}</td>
					<td style="text-align:center">${examineFaiList.students.name}</td>
					<td style="text-align:center">${examineFaiList.classroom.c_name}</td>
					<td style="text-align:center">${examineFaiList.classroom.c_type}</td>
					<td style="text-align:center">${examineFaiList.classroom.c_borrowType}</td>
					<td style="text-align:center">${examineFaiList.applyMsg.apply_weeks}</td>
					<td style="text-align:center">${examineFaiList.applyMsg.apply_week}</td>
					<td style="text-align:center">${examineFaiList.applyMsg.apply_begin}</td>
					<td style="text-align:center">${examineFaiList.applyMsg.apply_end}</td>
					<td style="text-align:center">${examineFaiList.applyMsg.apply_msg}</td>
					<td style="text-align:center">审核未通过</td>	
				</tr>
			</c:forEach>
		</table>
		</div>
	</div>
  		
  </body>
</html>
