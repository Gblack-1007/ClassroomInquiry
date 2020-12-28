<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page language="java" import="pojo.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link href="/ClassroomInquiry/css/global.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/ClassroomInquiry/assets/js/jquery.min.js"></script>
<script src='/ClassroomInquiry/js/jquery-1.9.1.js'></script>
<script src="/ClassroomInquiry/js/jquery.min.js"></script>
<script src="/ClassroomInquiry/js/jquery.js"></script>
<html>
  <head>    
    <title>我的房间</title>
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
            <h1 style="margin-top: 10px;text-align:center;">我申请的房间</h1>
    	    <table class="inputtable" width="95%" style="margin-left:15px;margin-top: 10px;">
			<tr>
				<td class="leftlabel" style="text-align:center">场地名称</td>
			    <td class="leftlabel" style="text-align:center">场地类别</td>
				<td class="leftlabel" style="text-align:center">场地借用类型</td>
				<td class="leftlabel" style="text-align:center">周次</td>
				<td class="leftlabel" style="text-align:center">星期</td>
				<td class="leftlabel" style="text-align:center">开始节数</td>
				<td class="leftlabel" style="text-align:center">结束节数</td>
				<td class="leftlabel" style="text-align:center">内容</td>
				<td class="leftlabel" style="text-align:center">审核情况</td>
				<td class="leftlabel" style="text-align:center">删除预定</td>
			</tr>
			<c:forEach items="${list}" var="list">
				<tr>
					<td style="text-align:center">${list.classroom.c_name}</td>
					<td style="text-align:center">${list.classroom.c_type}</td>
					<td style="text-align:center">${list.classroom.c_borrowType}</td>
					<td style="text-align:center">${list.applyMsg.apply_weeks}</td>
					<td style="text-align:center">${list.applyMsg.apply_week}</td>
					<td style="text-align:center">${list.applyMsg.apply_begin}</td>
					<td style="text-align:center">${list.applyMsg.apply_end}</td>
					<td style="text-align:center">${list.applyMsg.apply_msg}</td>
					<td style="text-align:center">
						<c:if test="${list.applyMsg.apply_status == 1}">
							预定中
						</c:if>
						<c:if test="${list.applyMsg.apply_status == 2 }">
							预定成功
						</c:if>	
						<c:if test="${list.applyMsg.apply_status == 3 }">
							审核未通过
						</c:if>
					</td>
					<td style="text-align:center"><input type="button" onclick="deleteApply('${list.applyMsg.id}','${list.applyMsg.apply_id}','${list.applyMsg.apply_weeks}','${list.applyMsg.apply_week}','${list.applyMsg.apply_begin}','${list.applyMsg.apply_end}')" value="删除预定" style="background-color:#9ab5f1"></td>	
				</tr>
			</c:forEach>
		</form>
		
  </body>
</html>
