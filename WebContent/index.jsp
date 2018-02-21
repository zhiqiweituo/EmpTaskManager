<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.5.1/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.5.1/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.5.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<div class="easyui-tabs" style="width:1000px;height:560px">
		<div title="主页面" iconCls="icon-house" style="padding:10px">
			<p style="font-size:14px">jQuery EasyUI framework helps you build your web pages easily.</p>
			<ul>
				<li>easyui is a collection of user-interface plugin based on jQuery.</li>
				<li>easyui provides essential functionality for building modem, interactive, javascript applications.</li>
				<li>using easyui you don't need to write many javascript code, you usually defines user-interface by writing some HTML markup.</li>
				<li>complete framework for HTML5 web page.</li>
				<li>easyui save your time and scales while developing your products.</li>
				<li>easyui is very easy but powerful.</li>
			</ul>
		</div>
		<div title="员工任务制定" iconCls="icon-group-group-edit" style="padding:10px">
			<div>
				<div id="tb">
					<div>
						<label style="margin-left: 0px;">绩效管理单位：</label>
						<input class="easyui-combobox" id="s_storSetId" name="s_storSetId" value="研发部"
							data-options="
								url:'stoSetComboBox',
								method:'get',
								valueField:'storSetId',
								textField:'storSetName',
								width:'150px;',
								panelHeight:'auto'
							">
						<label style="margin-left: 0px;">任务年度：</label>
						<input class="easyui-combobox" id="s_storSetId" name="s_storSetId" value="2018"
							data-options="
								url:'stoSetComboBox',
								method:'get',
								valueField:'storSetId',
								textField:'storSetName',
								width:'100px;',
								panelHeight:'auto'
							">
						<label style="margin-left: 0px;">任务月份：</label>
						<input class="easyui-combobox" id="s_storSetId" name="s_storSetId" value="1"
							data-options="
								url:'stoSetComboBox',
								method:'get',
								valueField:'storSetId',
								textField:'storSetName',
								width:'100px;',
								panelHeight:'auto'
							">
						<a href="javascript:searchSto()" class="easyui-linkbutton" iconCls="icon-zoom-zoom-in" plain="true">加载</a>
						<a href="javascript:searchSto()" class="easyui-linkbutton" iconCls="icon-help" plain="true">帮助</a>
						<a href="javascript:searchSto()" class="easyui-linkbutton" iconCls="icon-folder-folder-wrench" plain="true">退出</a>
					</div>
				</div>
				<div class="easyui-layout" style="width:100%;height:480px;">
					<div data-options="region:'north'" style="height:240px">
						<div class="easyui-tabs" style="width:100%;height:220px">
							<div title="关联任务" style="padding:10px">
								<table class="easyui-datagrid"
										data-options="url:'datagrid_data1.json',method:'get',border:false,singleSelect:true,fit:true,fitColumns:true">
									<thead>
										<tr>
											<th data-options="field:'itemid'" width="80">Item ID</th>
											<th data-options="field:'productid'" width="100">Product ID</th>
											<th data-options="field:'listprice',align:'right'" width="80">List Price</th>
											<th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
											<th data-options="field:'attr1'" width="150">Attribute</th>
											<th data-options="field:'status',align:'center'" width="60">Status</th>
										</tr>
									</thead>
								</table>
							</div>
							<div title="全部任务" style="padding:10px">
								<table class="easyui-datagrid"
										data-options="url:'datagrid_data1.json',method:'get',border:false,singleSelect:true,fit:true,fitColumns:true">
									<thead>
										<tr>
											<th data-options="field:'itemid'" width="80">Item ID</th>
											<th data-options="field:'productid'" width="100">Product ID</th>
											<th data-options="field:'listprice',align:'right'" width="80">List Price</th>
											<th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
											<th data-options="field:'attr1'" width="150">Attribute</th>
											<th data-options="field:'status',align:'center'" width="60">Status</th>
										</tr>
									</thead>
								</table>
							</div>
						</div>
					</div>
					<div data-options="region:'center'">
						<table class="easyui-datagrid"
								data-options="
									url:'datagrid_data1.json',
									method:'get',
									border:false,
									singleSelect:true,
									fit:true,
									fitColumns:true,
									toolbar: '#toolbar'
								">
							<thead>
								<tr>
									<th data-options="field:'itemid'" width="80">Item ID</th>
									<th data-options="field:'productid'" width="100">Product ID</th>
									<th data-options="field:'listprice',align:'right'" width="80">List Price</th>
									<th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
									<th data-options="field:'attr1'" width="150">Attribute</th>
									<th data-options="field:'status',align:'center'" width="60">Status</th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div title="员工任务汇报" style="padding:10px" 
			data-options="
			iconCls:'icon-user-user-comment',
			closable:true">
			This is the help content.
		</div>
	</div>

<!-- toolbar -->
<div id="toolbar">
	<div>
		<a href="javascript:openStoAddDialog()" class="easyui-linkbutton" iconCls="icon-table-table-add" plain="true">新增</a>
		<a href="javascript:openStoModifyDialog()" class="easyui-linkbutton" iconCls="icon-table-table-delete" plain="true">删除</a>
		<a href="javascript:deleteSto()" class="easyui-linkbutton" iconCls="icon-table-table-save" plain="true">保存</a>
	</div>
</div>

<script type="text/javascript">

</script>
</body>
</html>