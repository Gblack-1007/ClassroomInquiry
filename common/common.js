$(document).ready(function(){
	//下拉菜单
	$("ul.leftmenu a.dropmenu").click(function(){
		var ulNode = $(this).next("ul");
		ulNode.slideToggle("slow");
		changeIcon($(this));
	});
	
	
	//列表页面hover变色
	$(".list_table tr").hover(function(){
		$(this).addClass("rowhover");
	},function(){
		$(this).removeClass("rowhover");
	});
	
});
/**
 * 修改主菜单的指示图标
 */
 function changeIcon(chgNode){
	 if(chgNode){
		 if(chgNode.css("background-image").indexOf("collapsed.gif")>=0){
			 chgNode.css("background-image","url('image/common/expanded.gif')");
		 }else{
			 chgNode.css("background-image","url('image/common/collapsed.gif')");
		 }
	 }
 }
 
 /** 全选 */
 function doCheckedAll(elem){
	 $(elem).offsetParent("tabel").find("input:checkbox").attr("checked",elem.checked);
 }
 
 /**
  * 添加一行高级查询条件
  */
  function addRowCondition(){
	 $("#advsearchtab tr:last").after("<tr>"+$("#condtemplet tr:last").html()+"</tr>");
  }
	/*
	测试
 	*/
	function alertText(){
		var str=$("select option:selected").text();
		alert("choice:"+str);
	}
	/**
  * 删除一行高级查询条件
  */
  function removeRowCondition(){
	 $("#advsearchtab tr:not(:first):last").remove();
  }

 /**
  * 高级查询显示
  */
  function doAdvancedSearch(){
	  $("#advancedsearchcon").slideToggle()
  }

 /**
  * 高级查询显示
  */
  function resetAdvancedSearch(){
	  $("#advsearchtab tr:not(:first)").remove();
	  $("#groupbrowse .kind").removeClass("kindhover").find("li.kindlihover").removeClass("kindlihover");
	  $("#groupbrowse div.subkind:visible").fadeOut("20");
	  $("#groupbrowse .subkind ul li.sel").removeClass("sel");
  }

/**
  * 高级搜索-分组浏览功能
  */
  $(function(){
	  //打开分组浏览
	  $("#groupbrowse .kind li").bind("click",function(){
		  $(this).addClass("kindlihover").parent(".kind").addClass("kindhover").end().siblings("li").removeClass("kindlihover");
		  var index = $(this).prevAll().length;
		  $("#groupbrowse div.subkind").eq(index).fadeIn("100").siblings("div.subkind").hide();
	  });
	  //关闭分组浏览
	  $("#groupbrowse .subkind span.close").bind("click",function(){
		  $("#groupbrowse .kind").removeClass("kindhover").find("li.kindlihover").removeClass("kindlihover");
		  $("#groupbrowse div.subkind:visible").fadeOut("20");
	  });
	  //设置分组子项被选中
	  $("#groupbrowse .subkind ul li").bind("click",function(){
		  $(this).toggleClass("sel");
	  });
	  //绑定“高级搜索”标题的click
	  $("#advancedsearchcon .advsearchtitle span").bind("click",function(){
		  $("#advancedsearchcon").slideToggle();
	  });
  });