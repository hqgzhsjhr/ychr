<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<link type="text/css" rel="stylesheet" href="css/icon.css"/>
<link type="text/css" rel="stylesheet" href="css/easyui.css"/>
<style>
 .header {
	height: 100px;
}

.header p {
	font-size: 30px;
	color:#blue;
	position:absolute;
	top:-5px;
	left:80px;
	font-family: "微软雅黑";
}
.header img{
	border:0px;
	display:block;
}
.header ul {
	height: 30px;
}

.header>ul>li {
	float: right;
	height: 30px;
	line-height: 30px;
	
}

.header>ul>li:last-child {
	color:#FFF;
	margin-right:10px;
}

.header>ul>li.mm {
	width:80px;
	margin-right: 10px;
}

.header>ul>li>a {
	color: #blue;
	font-weight: bold;
	text-decoration:none;
}

.header>ul>li>a:hover {
	text-decoration:underline;
	color: #FF0;
}
ul li{
		padding:0px;
		list-style:none;
}
li{
	text-align:center;
		width:145px;
}
a{
		width:145px;
		text-decoration:none;
}
a:hover{
	
}
</style>
</head>

<body>
<div class="header">
		<img  src="images/yc01.png" with="80px" height="80px"><p>源辰人力资源管理系统</p>
         <ul>
			<li><a href="../admin.action?op=logout">安全退出</a></li>
			<li class="mm"><a href="updatepwd.html">忘记密码</a></li>
			<li class="mm"><a href="backmain.jsp">返回首页</a></li>
            <li>管理员：<a href="javascript:void(0)"></a></li>
        </ul> 
</div>
<div id="cc" class="easyui-layout" style="width:100%;height:500px;margin:auto">   
    <div data-options="region:'west',title:'导航菜单',iconCls:'icon-reload',split:true" style="width:160px;height:160px">
    <div id="aa" class="easyui-accordion" data-options="fit:true,border:false">
			<div  title="人力资源档案管理" data-options="iconCls:'icon-mini-add',selected:false" style="padding:10px;">
				<ul id="humanManage" class="easyui-tree">
					<li id="register"><a>档案登记</a></li>
					<li id="reRegister"><a>登记复核</a></li>
					<li id="select"><a>档案查询</a></li>
					<li id="update"><a>档案修改</a></li>
					<li id="delete"><a>档案删除</a></li>
				</ul>	
			</div>
			<div title="薪酬管理" data-options="iconCls:'icon-mini-add',selected:false" style="padding:10px;">
				<ul class="easyui-tree">
					<li id=""><a>标准登记</a></li>
					<li id=""><a>登记复核</a></li>
					<li id=""><a>标准查询</a></li>
					<li id=""><a>发放登记</a></li>
				</ul>	
			</div>
			<div title="调动管理" data-options="iconCls:'icon-mini-add',selected:false" style="padding:10px;">
				<ul class="easyui-tree">
					<li id=""><a>调动登记</a></li>
					<li id=""><a>调动审核</a></li>
					<li id=""><a>标准查询</a></li>
				</ul>	
			</div>
			<div title="招聘管理" data-options="iconCls:'icon-mini-add',selected:false" style="padding:10px;">
				<ul class="easyui-tree"><li><a  href="#"></a></li></ul>	
			</div>
			<div title="培训管理" data-options="iconCls:'icon-mini-add',selected:false" style="padding:10px;">
				<ul class="easyui-tree"><li><a  href="training.action">培训登记</a></li></ul>	
			</div>
			<div title="激励管理" data-options="iconCls:'icon-mini-add',selected:false" style="padding:10px;">
				<ul class="easyui-tree"><li><a  href="#">速成</a></li></ul>	
			</div>
	</div>
    
         
    </div>  
    
    <div data-options="region:'center'" style="padding:5px;background:#eee;">
    	 <div id="panel" class="easyui-tabs" title="主界面" data-options="fit:true">
        		
        </div> 
    </div>  
</div> 
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>

</html>
