<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link href="css/global.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="assets/js/jquery.min.js"></script>
<script src='js/jquery-1.9.1.js'></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.js"></script>
<html>
<head>
<script type="text/javascript">
  	  	function theQuery(){
  	  		var c_weeks = $("#c_weeks").val();
	  		var c_week = $("#c_week").val();
	  		var c_begin = $("#c_begin").val();
	  		var c_end = $("#c_end").val();
	  		var c_location = $("#c_location").val();
  	  		var status;
  	  		$.ajax({
  	  			url : "getStatus.action",
  	  			type : "POST",
  	  			contentType : "application/json;charset=utf-8",
	  	  		data : JSON.stringify({
	  				c_weeks : c_weeks,
	  				c_week : c_week,
	  				c_begin : c_begin,
	  				c_end : c_end,
	  				c_location : c_location,
	  				}),
	  			success : function(result){
	  				status = result;
	  				selectByCondition();
	  			},
	  			error : function(result) {
  					alert("查询出错");
  				}
  	  		})
  	  		function selectByCondition(){
	  	  		$.ajax({
	  	  			url : "selectByCondition.action",
	  				type : "POST",
	  				/* data : "json", */
	  				contentType : "application/json;charset=utf-8",
	  				//向后端传输的数据
	  				data : JSON.stringify({
	  				c_weeks : c_weeks,
	  				c_week : c_week,
	  				c_begin : c_begin,
	  				c_end : c_end,
	  				c_location : c_location,
	  				}),
	  				//处理后端返回的数据
	  				success : successFunction,
	  				//处理失败返回的数据
	  				error : function(result) {
	  					alert("查询出错");
	  				}
	  	  		})
	  	  		function successFunction(result){
	  	  				alert("查询成功");
	  	  				if($.isEmptyObject(result)){
	  	  					alert("查询结果为空");
	  	  					
	  	  				}else{
	  	  				//每次查询清空上次查询内容
	  	  				$("#databody").empty();
	  	  				//将结果转换为数组
	  	  				var rs = eval(result);
	  	  				var statusList = eval(status);
	  	  				$.each(rs, function (index, item) { 
	  	  					var c_id = rs[index].c_id;
	  	  					var c_name = rs[index].c_name;
	  	  					var c_location = rs[index].c_location;
	  	  					var c_type = rs[index].c_type;
	  	  					var c_seat = rs[index].c_seat;
	  	  					var c_borrowType = rs[index].c_borrowType;
	  	  					var c_department = rs[index].c_department;
	  	  					var c_status = statusList[index];
	  	  					//创建一行
	  	  					var line=document.createElement("tr");
	  	  					//创建id列
	  	  					var c_idColumn = document.createElement("td");
	  	  					c_idColumn.innerHTML= c_id;
	  	  					line.appendChild(c_idColumn);
	  	  					
	  	  					//创建c_name列
	  	  					var c_nameColumn = document.createElement("td");
	  	  					c_nameColumn.innerHTML= c_name;
	  	  					line.appendChild(c_nameColumn);
	  	  					
	  	  					//创建c_location列
	  	  					var c_locationColumn = document.createElement("td");
	  	  					c_locationColumn.innerHTML= c_location;
	  	  					line.appendChild(c_locationColumn);
	  	  					
	  	  					//创建c_type列
	  	  					var c_typeColumn = document.createElement("td");
	  	  					c_typeColumn.innerHTML= c_type;
	  	  					line.appendChild(c_typeColumn);
	  	  					
	  	  					//创建c_seat列
	  	  					var c_seatColumn = document.createElement("td");
	  	  					c_seatColumn.innerHTML= c_seat;
	  	  					line.appendChild(c_seatColumn);
	  	  					
	  	  					//创建c_borrowType列
	  	  					var c_borrowTypeColumn = document.createElement("td");
	  	  					c_borrowTypeColumn.innerHTML= c_borrowType;
	  	  					line.appendChild(c_borrowTypeColumn);
	  	  					
	  	  					//创建c_department列
	  	  					var c_departmentColumn = document.createElement("td");
	  	  					c_departmentColumn.innerHTML= c_department;
	  	  					line.appendChild(c_departmentColumn);
	  	  					
	  	  					//创建c_status列
	  	  					var c_statusColumn = document.createElement("td");
	  	  					var disabled;
	  	  					if(c_status == "0" || c_status == "3"){
	  	  						disabled = "";
	  	  						c_status = "未预定";
	  	  					}else if(c_status == "1"){
	  	  						c_status = "预定中";
	  	  						disabled = "disabled = 'true'";
	  	  					}else if(c_status == "2"){
	  	  						c_status = "已预定";
	  	  						disabled = "disabled = 'true'";
	  	  					}else {
	  	  						c_status = "未知";
	  	  						disabled = "disabled = 'true'";
	  	  					}
	  	  					c_statusColumn.innerHTML= c_status;
	  	  					line.appendChild(c_statusColumn);
	  	  					//创建预定按钮
	  	  					var apply = document.createElement("td");
	  	  					apply.innerHTML= '<td align="center"><a href="applyClassroom/'+ c_id +'?c_weeks='+c_weeks+'&c_week='+c_week+'&c_begin='+c_begin+'&c_end='+c_end+'"><input ' + disabled +' type="button" value="点击预定" style="background-color:#9ab5f1"/></a></td>';
	  	  					line.appendChild(apply);
	  	  					document.getElementById("databody").appendChild(line);
	  	  				});
  	  				}
  	  			}
  	  		}	
  	  	};
  	</script>

</head>
<table class="inputtable" width="100%" style="margin-left: 5px;">
	<tr>
		<td class="leftlabel">周次：</td>
		<td style="width: 30px;"><select id="c_weeks" name="c_weeks">
				<option value="1">第一周</option>
				<option value="2">第二周</option>
				<option value="3">第三周</option>
				<option value="4">第四周</option>
				<option value="5">第五周</option>
				<option value="6">第六周</option>
				<option value="7">第七周</option>
				<option value="8">第八周</option>
				<option value="9">第九周</option>
				<option value="10">第十周</option>
				<option value="11">第十一周</option>
				<option value="12">第十二周</option>
				<option value="13">第十三周</option>
				<option value="14">第十四周</option>
				<option value="15">第十五周</option>
				<option value="16">第十六周</option>
				<option value="17">第十七周</option>
				<option value="18">第十八周</option>
				<option value="19">第十九周</option>
				<option value="20">第二十周</option>
		</select></td>
		<td class="leftlabel">星期：</td>
		<td style="width: 30px;"><select id="c_week" name="c_week">
				<option value="1">周一</option>
				<option value="2">周二</option>
				<option value="3">周三</option>
				<option value="4">周四</option>
				<option value="5">周五</option>
		</select></td>
		<td class="leftlabel">节次：</td>
		<td style="width: 30px;"><select id="c_begin" name="c_begin">
				<option value="1">第一节</option>
				<option value="2">第二节</option>
				<option value="3">第三节</option>
				<option value="4">第四节</option>
				<option value="5">第五节</option>
				<option value="6">第六节</option>
				<option value="7">第七节</option>
				<option value="8">第八节</option>
				<option value="9">第九节</option>
				<option value="10">第十节</option>
				<option value="11">第十一节</option>
		</select>
		<td>至</td>
		<td style="width: 30px;"><select id="c_end" name="c_end">
				<option value="1">第一节</option>
				<option value="2">第二节</option>
				<option value="3">第三节</option>
				<option value="4">第四节</option>
				<option value="5">第五节</option>
				<option value="6">第六节</option>
				<option value="7">第七节</option>
				<option value="8">第八节</option>
				<option value="9">第九节</option>
				<option value="10">第十节</option>
				<option value="11">第十一节</option>
		</select></td>
		</td>
		<td class="leftlabel">校区：</td>
		<td style="width: 30px;"><select id="c_location"
			name="c_location">
				<option value="白云校区">白云校区</option>
				<option value="河源校区">河源校区</option>
				<option value="东校区">东校区</option>
				<option value="西校区">西校区</option>
				<option value="北校区">北校区</option>

		</select></td>
		<td><input id="selectByCondition" type="button" value="查询" onclick="theQuery()" style="background-color: #9ab5f1"> </td>
	</tr>
</table>
</div>
<div style="margin-left: 30px; margin-top: 10px;">
	<table class="inputtable" width="95%" id="list">
		<tr>
			<td class="leftlabel" style="text-align: center">场地编号ID</td>
			<td class="leftlabel" style="text-align: center">场地名称</td>
			<td class="leftlabel" style="text-align: center">校区</td>
			<td class="leftlabel" style="text-align: center">场地类别</td>
			<td class="leftlabel" style="text-align: center">座位数</td>
			<td class="leftlabel" style="text-align: center">场地借用类型</td>
			<td class="leftlabel" style="text-align: center">使用部门</td>
			<td class="leftlabel" style="text-align: center">预定状态</td>		
			<td class="leftlabel" style="text-align: center">点击预定</td>
		</tr>
		<tbody id="databody">
		</tbody>
	</table>
	</body>
</html>
