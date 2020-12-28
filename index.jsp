<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Web校园易借系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/loader-style.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/js/progress-bar/number-pb.css">
    <style type="text/css">
    canvas#canvas4 {
        position: relative;
        top: 20px;
    }
    </style>
</head>
<body>
    <nav role="navigation" class="navbar navbar-static-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" class="navbar-toggle" type="button">
                    <span class="entypo-menu"></span>
                </button>
                <button class="navbar-toggle toggle-menu-mobile toggle-left" type="button">
                    <span class="entypo-list-add"></span>
                </button>
                <div id="logo-mobile" class="visible-xs">
                   <h1>空教室查询<span>v1.0</span></h1>
                </div>

            </div>
            <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
                <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" class="admin-pic img-circle" src="assets/img/user/001.jpg">Hi, ${user.stu_id} 用户<b class="caret"></b>
                        </a>
                        <ul style="margin-top:14px;" role="menu" class="dropdown-setting dropdown-menu">
                            <li>
                                <a href="/ClassroomInquiry/usersInfo/${user.stu_id}"  target="mainFrame">
                                    <span class="entypo-user"></span>&#160;&#160;个人信息</a>
                            </li>
                            <li>
                                <a href="/ClassroomInquiry">
                                    <span class="entypo-lifebuoy"></span>&#160;&#160;退出</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="icon-gear"></span>&#160;&#160;设置</a>
                        <ul role="menu" class="dropdown-setting dropdown-menu">
                            <li class="theme-bg">
                                <div id="button-bg"></div>
                                <div id="button-bg2"></div>
                                <div id="button-bg3"></div>
                                <div id="button-bg5"></div>
                                <div id="button-bg6"></div>
                                <div id="button-bg7"></div>
                                <div id="button-bg8"></div>
                                <div id="button-bg9"></div>
                                <div id="button-bg10"></div>
                                <div id="button-bg11"></div>
                                <div id="button-bg12"></div>
                                <div id="button-bg13"></div>
                            </li>
                        </ul>
                    </li>

                </ul>

            </div>
        </div>
    </nav>
    <div id="skin-select">
        <div id="logo">
         <h3>空教室查询<span>v1.0</span></h3>
        </div>

        <a id="toggle">
            <span class="entypo-menu"></span>
        </a>
        <div class="dark">
            <form action="#">
                <span>
                    <input type="text" name="search" value="" class="search rounded id_search" placeholder="菜单搜索" autofocus="">
                </span>
            </form>
        </div>

        <div class="search-hover">
            <form id="demo-2">
                <input type="search" placeholder="菜单搜索" class="id_search">
            </form>
        </div>
        
        <div class="skin-part">
            <div id="tree-wrap">
                <div class="side-bar"> 
                  <ul class="topnav menu-left-nest">
                        <li>
                            <a target="mainFrame" href="calendar.jsp" style="border-left:0px solid!important;" class="title-menu-left">
                                <span>日历</span>
                                <i data-toggle="tooltip"></i>
                            </a>
                        </li>
                    </ul>   
                	 <ul class="topnav menu-left-nest">
                        <li>
                            <a target="mainFrame" href="MeetRoomShows.jsp" style="border-left:0px solid!important;" class="title-menu-left">
                                <span>教室查询</span>
                                <i data-toggle="tooltip"></i>
                            </a>
                        </li>
                    </ul>    
                                        
                    <c:if test="${user.jurisdiction=='1'}">
                     <ul class="topnav menu-left-nest">
                        <li>
                            <a target="mainFrame" href="classroomExamine/${user.stu_id }" style="border-left:0px solid!important;" class="title-menu-left">
                                <span>教室审核</span>
                                <i data-toggle="tooltip"></i>
                            </a>
                        </li>
                    </ul>                                                                                
                     <ul class="topnav menu-left-nest">
                        <li>
                            <a href="#" style="border-left:0px solid!important;" class="title-menu-left">
                                <span>用户信息管理</span>
                                <i data-toggle="tooltip"></i>
                            </a>
                             <ul>
                           <li>
                      		  <a class="tooltip-tip ajax-load" target="mainFrame" href="usersInfo.jsp" title="Blog App">
                                <i class="icon-search"></i>
                                <span>用户信息查询</span>
                                  </a>
                        </li>
                        <li>
                            <a class="tooltip-tip ajax-load" target="mainFrame"  href="addUser.jsp" title="Mail">
                                <i class="icon-document-edit"></i>
                                <span>用户信息添加</span>
                            </a>
                        </li>
                             </ul>
                        </li>

                    </ul>
                    </c:if>
                    
                    <ul id="menu-showhide" class="topnav menu-left-nest">
                        <li>
                            <a href="#" style="border-left:0px solid!important;" class="title-menu-left">
                                <span>我的教室</span>
                                <i data-toggle="tooltip"></i>
                            </a>
                        	 <ul>
                             	  <li>
                            <a class="tooltip-tip" target="mainFrame" href="usersApply/${user.stu_id }" title="UI Element">
                                <i class="icon-monitor"></i>
                                <span>我的申请</span>
                            </a>                          
                        </li>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="wrap-fluid">
        <div class="container-fluid paper-wrap bevel tlbr">
            <iframe  style="width:1100px;height:550px;margin-left:15px"
                     id="MainFrame" scrolling="auto" frameborder="no" name="mainFrame" src="calendar.jsp">
            </iframe>
        </div>
    </div>
    <script type="text/javascript" src="assets/js/jquery.js"></script>
    <script src="assets/js/progress-bar/src/jquery.velocity.min.js"></script>
    <script src="assets/js/progress-bar/number-pb.js"></script>
    <script src="assets/js/progress-bar/progress-app.js"></script>
    <script type="text/javascript" src="assets/js/preloader.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/app.js"></script>
    <script type="text/javascript" src="assets/js/load.js"></script>
    <script type="text/javascript" src="assets/js/main.js"></script>
    <script type="text/javascript" src="assets/js/chart/jquery.flot.js"></script>
    <script type="text/javascript" src="assets/js/chart/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="assets/js/speed/canvasgauge-coustom.js"></script>
    <script type="text/javascript" src="assets/js/countdown/jquery.countdown.js"></script>
    <script src="assets/js/jhere-custom.js"></script>
</body>
</html>
