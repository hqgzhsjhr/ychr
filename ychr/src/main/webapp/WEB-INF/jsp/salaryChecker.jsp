<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8">
<title>薪酬标准管理</title>
</head>

<body>
<div>
	<input type="button" name="" value="复核通过"/>
	<input type="button" name="" value="返回"/>
</div>
<table >  
        <tr>  
            <td data-options="field:'code'">薪酬标准编号</td>  
            <td><input name="" type="text"/></td>
            <td data-options="field:'name'">薪酬标准名称</td>
            <td><input name="" type="text"/></td>
             <td data-options="field:'price'">薪酬总额</td>  
            <td><input name="" type="text"/></td>
        </tr>  
         <tr>  
            <td data-options="field:'price'">制定人</td>  
            <td><input name="" type="text"/></td>
             <td data-options="field:'price'">登记人</td>  
            <td><input name="" type="text"/></td>
             <td data-options="field:'price'">登记时间</td>  
            <td><input name="" type="text"/></td>
        </tr> 
        <tr>
        	<td data-options="field:'price'">复核意见</td>
        	<td colspan="3"><textarea name="" ></textarea></td>
        </tr>
</table>
<table class="easyui-datagrid" width="630px">  
    <thead>  
        <tr>  
            <th data-options="field:'code'"  style="height: 24px; width: 120px;">序号</th>  
             <th data-options="field:'code'"  style="height: 24px; width: 100px;"></th> 
            <th data-options="field:'name'"  style="height: 24px; width: 120px;">薪酬项目名称</th>  
            <th data-options="field:'code'"  style="height: 24px; width: 100px;"></th> 
            <th data-options="field:'price'"  style="height: 24px; width: 120px;">金额</th>  
        </tr>  
    </thead>  
    <tbody>  
        <tr>  
            <td>001</td><td>name1</td><td>2323</td>  
        </tr>  
        <tr>  
            <td>002</td><td>name2</td><td>4612</td>  
        </tr>  
    </tbody>  
</table>
</body>
</html>