<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>人力资源档案登记复核</title>
</head>
<body>
	<table id="show_file"></table>
	<p style="height:20px;"></p>

	<script>
		$('#show_file').datagrid({
			url:'file.action',
			pagination:true,
			pageNumber:1,
			pageSize:5,
			pageList:[1,2,3,4,5],
			
			columns:[[
			         {field:'',checkbox:true,width:80},
			         {field:'humanId',title:'档案编号',width:80},
			         {field:'humanName',title:'姓名',width:80},
			         {field:'humanSex',title:'性别',width:120},
			         {field:'firstKindName',title:'I级机构',width:150},
			         {field:'secondKindName',title:'II级机构',width:150},
			         {field:'thirdKindName',title:'III级机构',width:150},
			         {field:'humanProDesignation',title:'职称',width:120},
			         {field:'humanFileStatus',title:'复核',width:100,formatter:function(value,row,index){
		            	return '<a href="javascript:updateGoodInfo('+row.hufId+')">复核</a>'
		             }}
			]]
		});
		
	</script>
</body>
</html>