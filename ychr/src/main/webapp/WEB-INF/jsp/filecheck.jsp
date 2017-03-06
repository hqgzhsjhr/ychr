<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>人力资源档案登记</title>
</head>

<body>
	<div class="easyui-panel" style="width: 860px">
		<form id="humanFile" method="post" action="register.action">
			<table>
				<tr>
					<td><span>图片：</span></td>
					<td>
						<!-- <input type="file" id="pic" multiple="multiple" name="humanPicture" /> -->
					</td>
				</tr>
				<tr>
					<td><span>I级机构:</span></td>
					<td><input class="easyui-validatebox" type="text"
						id="firstKindName" name="firstKindName" value="" /></td>
					<td style="width:210px"><span>II级机构：</span></td>
					<td><input class="easyui-validatebox" type="text"
						id="secondKindName" name="secondKindName" value="" style="margin-left: -93px;" /></td>
					<td><span>III级机构：</span></td>
					<td><input class="easyui-validatebox" type="text"
						id="thirdKindName" name="thirdKindName" value="" /></td>
				</tr>
				<tr>
					<td><span>职位分类:</span></td>
					<td ><input class="easyui-validatebox" type="text"
						id="humanMajorKindName" name="humanMajorKindName" value="" /></td>
					<td style="width:210px"><span>职位名称：</span></td>
					<td><input class="easyui-validatebox" type="text"
						id="hunmaMajorName" name="hunmaMajorName" value="" style="margin-left: -93px;" /></td>
					<td><span>职称：</span></td>
					<td><select id="humanProDesignation" class="easyui-combobox"
						name="humanProDesignation" style="width: 148px;">
							<option value="aa">工程师</option>
							<option>程序员</option>
					</select></td>
				</tr>
				<tr>
					<td><span>姓名：</span></td>
					<td ><input class="easyui-validatebox" type="text"
						id="humanName" name="humanName" value="" /></td>
					<td style="width:210px;"><span>性别：</span></td>
					<td><span style="margin-left: -93px;"><select id="humanSex" class="easyui-combobox"
						name="humanSex" style="width:148px; ">
							<option value="男">男</option>
							<option>女</option>
					</select></span>
					<td><span>EMAIL：</span></td>
					<td><input id="vv" type="text" class="easyui-validatebox"
						value="" id="humanEmail" name="humanEmail"
						data-options="required:true,validType:'email'" /></td>
				</tr>
				<tr>
					<td><span>手机：</span></td>
					<td><input type="text" class="easyui-validatebox" value=""
						id="humanMobilephone" name="humanMobilephone"
						data-options="validType:'minLength[11]'"></td>
					<td style="width:210px"><span>电话：</span></td>
					<td><input type="text" class="easyui-validatebox" value=""
						name="humanTelephone" id="humanTelephone" style="margin-left: -93px;"/></td>
					<td><span>QQ：</span></td>
					<td><input type="text" class="easyui-validatebox" value=""
						name="humanQq" id="humanQq" /></td>
				</tr>
				<tr>
					<td><span>住址：</span></td>
					<td><input type="text" class="easyui-validatebox" value=""
						name="humanAddress" id="humanAddress" /></td>
					<td style="width:210px"><span>邮编：</span></td>
					<td><input type="text" class="easyui-validatebox" value=""
						name="humanPostcode" id="humanPostcode" style="margin-left: -93px;"/></td>

					<td><span>国籍：</span></td>
					<td ><select id="humanNationality" class="easyui-combobox"
						name="humanNationality" style="width: 148px;">
							<option value="aa2">中国</option>
							<option>美国</option>
							<option>日本</option>
					</select></td>
				</tr>
				<tr>
					<td><span>出生地：</span></td>
					<td><input type="text" class="easyui-validatebox" value=""
						name="humanBirthplace" id="humanBirthday" /></td>
					 <td style="width:210px"><span>生日：</span></td>
					<td><input type="text" class="easyui-validatebox" value=""
						name="humanBirthday" id="humanBirthday" style="margin-left: -93px;"/></td> 
					<td><span>民族：</span></td>
					<td><select id="humanRace" class="easyui-combobox"
						name="humanRace" style="width: 148px;">
							<option value="aa3">汉</option>
							<option>壮</option>
							<option>苗</option>
					</select></td>
				</tr>
				<tr>
					<td><span>宗教信仰：</span></td>
					<td><select id="humanReligion" class="easyui-combobox"
						name="humanReligion" style="width: 148px;">
							<option value="aa4">无</option>
							<option>佛教</option>
							<option>伊斯兰教</option>
					</select></td>
					<td style="width:210px"><span>政治面貌：</span></td>
					<td><span style="margin-left: -93px;"><select id="humanParty" class="easyui-combobox"
						name="humanParty" style="width: 148px;">
							<option value="aa5">团员</option>
							<option>党员</option>
							<option>群众</option>
					</select></span></td>

					<td><span>身份证号码：</span></td>
					<td><input class="easyui-validatebox" value=""
						name="humanIdCard" id="humanIdCard" /></td>
				</tr>
				<tr>
					<td><span>社会保障号码：</span></td>
					<td><input type="text" class="easyui-validatebox" value=""
						name="humanSocietySecurityId" id="humanSocietySecurityId" /></td>
					<td style="width:210px"><span>学历：</span></td>
					<td><span style="margin-left: -93px;">
					<select id="humanEducatedDegree" class="easyui-combobox"
						name="humanEducatedDegree"  style="width: 148px;">
							<option value="aa6">高中</option>
							<option>大专</option>
							<option>本科</option>
							<option>硕士</option>
							<option>博士</option>
					</select></span></td>
					<td><span>学历专业：</span></td>
					<td><select id="humanEducatedMajor" class="easyui-combobox"
						name="humanEducatedMajor" style="width: 148px;">
							<option value="aa7">物联网</option>
							<option>软件工程</option>
					</select></td>
				</tr>
				<tr>
					<td><span>薪酬标准：</span></td>
					<td><input type="text" class="easyui-validatebox" value=""
						name="salaryStandardName" id="salaryStandardName" /></td>
					<td style="width:210px"><span>开户行：</span></td>
					<td><input type="text" class="easyui-validatebox"
						id="humanBank" value="" name="humanBank" style="margin-left: -93px;"/></td>

					<td><span>账号：</span></td>
					<td><input type="text" class="easyui-validatebox" value=""
						name="humanAccount" id="humanAccount" /></td>
				</tr>
				<tr>
					<td><span>登记人：</span></td>
					<td><input type="text" class="easyui-validatebox" value=""
						name="register" id="register" /></td>
					 <td style="width:210px"><span>建档时间：</span></td>
					<td><input type="text" class="easyui-validatebox" value=" "
						name="registTime" id="registTime" style="margin-left: -93px;"/></td> 
					<td><span>特长：</span></td>
					<td><input type="text" class="easyui-validatebox" value=""
						name="humanSpeciality" id="humanSpeciality" /></td>
				</tr>
				<tr>
					<td><span>爱好：</span></td>
					<td><input type="text" class="easyui-validatebox" value=" "
						name="humanHobby" id="humanHobby" /></td>
				</tr>
				<tr>
					<td><span>个人履历：</span></td>
					<td colspan="2"><input type="text" class="easyui-textbox"
						value=" "  data-options="multiline:true" name="humanHistroyRecords"
						style="width: 400px; height: 100px" id="humanHistroyRecords"></td>
				</tr>
				<tr>
					<td><span>家庭关系信息：</span></td>
					<td colspan="2"><input type="text" class="easyui-textbox"
						value=" " data-options="multiline:true"
						name="humanFamilyMembership" style="width: 400px; height: 100px"
						id="humanFamilyMembership"></td>
				</tr>
				<tr>
					<td><span>备注：</span></td>
					<td colspan="2"><input type="text" class="easyui-textbox"
						value="  " data-options="multiline:true" name="remark"
						style="width: 400px; height: 100px" id="remark"></td>
				</tr>
				<tr>
					<td>
						<div id='tt'>
							<input type="submit" value="提交">
							 <input type="reset" value="清除">
						</div>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>