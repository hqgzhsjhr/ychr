$(function(){
	$('#panel').tabs('add',{    
		title:"源辰信息",    
		href:'toyc.action',
		fit:true,
		closable:true,    
	});
	$('#humanManage').tree({
		onClick: function(node){
			var id=node.id;//获取点击的节点id
			var title="源辰信息";
			var href="toyc.action";
			var tabObj=$('#panel');
			if(id=="register"){//学员信息
				if(tabObj.tabs('exists','档案登记')){
					tabObj.tabs('select','档案登记');
					return;
				}else{
					title="档案登记";
					href='show_register.action';
				}
			}else if(id=="reRegister"){//学员信息
				if(tabObj.tabs('exists','登记复核')){
					tabObj.tabs('select','登记复核');
					return;
				}else{
					title="登记复核";
					href='show_file.action';
				}
			}else if(id=="select"){//学员信息
				if(tabObj.tabs('exists','档案查询')){
					tabObj.tabs('select','档案查询');
					return;
				}else{
					title="档案查询";
					href='show_select.action';
				}
			}else if(id=="update"){
				if(tabObj.tabs('exists','档案修改')){
					tabObj.tabs('select','档案修改');
					return;
				}else{
					title="档案修改";
					href='show_update.action';
				}
			}else if(id=="delete"){
				if(tabObj.tabs('exists','档案删除')){
					tabObj.tabs('select','档案删除');
					return;
				}else{
					title="档案删除";
					href='show_delete.action';
				}
			}
			tabObj.tabs('add',{    
				title:title,    
				href:href,
				fit:true,
				closable:true,    
			});
		}
	});
});

