<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>ext/easyui/themes/green/easyui.css?t=34355">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>ext/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>ext/easyui/themes/color.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>ext/farm/farm.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>ext/farm/imgPosition.css">
    <script type="text/javascript" src="<%=basePath%>ext/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>ext/easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>ext/easyui/plugins/jquery.edatagrid.js"></script>
    <script type="text/javascript" src="<%=basePath%>ext/easyui/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>ext/farm/helper.js?346t"></script>
    <script type="text/javascript" src="<%=basePath%>ext/farm/imgPosition.js"></script>     
</head>
<body>
	<div id="controlBox">
        <span style="color: white">种子名称:</span>
        <input id="nameSearch" class="easyui-textbox">
        <a href="#" class="easyui-linkbutton c1" iconCls="icon-search" onclick="doSearch()">查询</a>
        <a href="#" class="easyui-linkbutton c2" iconCls="icon-add" onclick="addForm()">添加</a>
        <a href="#" class="easyui-linkbutton c4" iconCls="icon-edit" onclick="loadForm()">编辑</a>
        <a href="#" class="easyui-linkbutton c3" iconCls="icon-remove" onclick="javascript:grid.edatagrid('cancelRow')">取消</a>
        <a href="#" class="easyui-linkbutton c5" iconCls="icon-cancel" onclick="javascript:grid.edatagrid('destroyRow')">删除</a>
    </div>
    <table id="grid"></table>
    <div id="msgBox" ></div>
    <!-- 编辑种子清单 -->
    <div id="formSeedContainer" class="easyui-dialog" style="width:1060px;height:400px;padding:20px 10px" closed="true" buttons="#formSeedButtons">
        <form id="formSeed" method="POST" novalidate>
            <table class='tbledit' style="font-size:1.1em">
                <tr>
                	<td width="180">ID：</td>
                    <td width="300"><input id="formSeed_id" name="Id" required="true" class="easyui-numberbox" value="0" readonly="true"></td>
                    <td width="180">种子ID：</td>
                    <td width="300"><input name="seedId" required="true" class="easyui-numberbox" ></td>
                </tr>
                <tr>
                    <td>种子名称：</td>
                    <td><input name="name" required="true" class="easyui-textbox w1024"></td>
                    <td>X季作物：</td>
                    <td><input name="harvestNum" required="true" class="easyui-numberbox w1024"></td>
                </tr>
                <tr>
                    <td>种子等级：</td>
                    <td><input name="grade" required="true" class="easyui-numberbox w1024"></td>
                    <td>种子类型：</td>
                    <td><input name="type" required="true" class="easyui-combobox" panelHeight="auto"
                               data-options="editable:false,
                                        valueField:'code',
                                        textField:'caption',
                                        url:'<%=basePath%>/codeType/data'"></td>
                </tr>
              	<tr>
              		<td>可获经验：</td>
                    <td><input name="experience" required="true" class="easyui-numberbox w1024"></td>
                    <td>每季成熟所需时间：</td>
                    <td><input name="matureTime" required="true" class="easyui-numberbox w1024">秒</td>
              	</tr>
              	<tr>
              		<td>每季成熟可获收成：</td>
                    <td><input name="fruitNum" required="true" class="easyui-numberbox w1024">个果实</td>
                    <td>种子采购价：</td>
                    <td><input name="seedPrice" required="true" class="easyui-numberbox w1024">个金币</td>
              	</tr>
              	<tr>
              		<td>每个收获的果实单价：</td>
                    <td><input name="fruitPrice" required="true" class="easyui-numberbox w1024"></td>
                    <td>土地需求：</td>
                    <td><input name="land" required="true" class="easyui-combobox" panelHeight="auto"
                               data-options="editable:false,
                                        valueField:'code',
                                        textField:'caption',
                                        url:'<%=basePath%>/codeLand/data'"></td>
              	</tr>
                <tr>
                <tr>
              		<td>每季成熟可获积分：</td>
                    <td><input name="integral" required="true" class="easyui-numberbox w1024"></td>
                    <td>提示信息：</td>
                    <td><input name="tip" required="true" class="easyui-textbox w1024"></td>
              	</tr>
            </table>
        </form>
    </div>
    <div id="formSeedButtons">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveForm()">保存</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#formSeedContainer').dialog('close')">取消</a>
    </div>
    <!-- 成长阶段 -->
    <div id="cropGrowth" class="easyui-dialog" style="width:1060px;height:450px;padding:1px 10px" closed="true">
        <div id="growControlBox">
        <a href="#" class="easyui-linkbutton c2" iconCls="icon-add" onclick="addGrowForm()">添加</a>
        <a href="#" class="easyui-linkbutton c4" iconCls="icon-edit" onclick="loadGrowForm()">编辑</a>
        <a href="#" class="easyui-linkbutton c3" iconCls="icon-remove" onclick="javascript:growGrid.edatagrid('cancelRow')">取消</a>
        <a href="#" class="easyui-linkbutton c5" iconCls="icon-cancel" onclick="javascript:growGrid.edatagrid('destroyRow')">删除</a>
    	</div>
    	<table id="growGrid" ></table>
    	<!-- 编辑成长阶段 -->
    	<div id="formGrowContainer" class="easyui-dialog" style="width:900px;height:350px;padding:20px 10px" closed="true" buttons="#formGrowButtons">
    		<form id="formGrow" method="POST" novalidate>
	            <table class='tbledit' style="font-size:1.1em">
	                <tr>
	                	<td width="155">ID：</td>
	                    <td width="275"><input id="formGrow_id" name="Id" required="true" class="easyui-numberbox" value="0" readonly="true"></td>
	                    <td width="155">种子ID：</td>
	                    <td width="215"><input id="formGrow_seedId" name="seedId" required="true" class="easyui-numberbox"  readonly="true"></td>
	                </tr>
	                <tr>
	                    <td>生长阶段：</td>
	                    <td><input id="formGrow_stage" name="stage" required="true" class="easyui-numberbox w1024"></td>
	                    <td>生长阶段标题：</td>
	                    <td><input name="title" required="true" class="easyui-textbox w1024"></td>
	                </tr>
	              	<tr>
	              		<td>阶段生长时间：</td>
	                    <td><input name="growthTime" required="true" class="easyui-numberbox w1024"></td>
	                    <td>生虫概率：</td>
	                    <td><input name="insect" required="true" class="easyui-numberbox w1024" data-options="precision: 2"></td>
	              	</tr>
	              	<tr>
	              		<td>宽度：</td>
	                    <td><input id="formGrow_width" name="width" required="true" class="easyui-numberbox w1024" readonly="true">px</td>
	                    <td>高度：</td>
	                    <td><input id="formGrow_height" name="height" required="true" class="easyui-numberbox w1024" readonly="true">px</td>
	              	</tr>
	              	<tr>
	              		<td>offsetX：</td>
	                    <td><input id="formGrow_offsetX" name="offsetX" required="true" class="easyui-numberbox w1024" readonly="true">px</td>
	                    <td>offsetY：</td>
	                    <td><input id="formGrow_offsetY" name="offsetY" required="true" class="easyui-numberbox w1024" readonly="true">px</td>
	              	</tr>
	              	<tr>
	                    <td>作物状态：</td>
	                    <td><input name="state" required="true" class="easyui-combobox" panelHeight="auto"
	                               data-options="editable:false,
	                                        valueField:'code',
	                                        textField:'caption',
	                                        url:'<%=basePath%>/codeState/data'">
	                   </td>
	                   <td></td>
	                   <td><a href="javascript:void(0)" class="easyui-linkbutton"  onclick="loadPositionDialog()">编辑图片位置</a></td>
	              </tr>
	           </table>
        	</form>
	       	<div id="formGrowButtons">
	       		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveGrowForm()">保存</a>
	       		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#formGrowContainer').dialog('close')">取消</a>
	   		</div>    
    	</div>
    </div>
    <!-- 定位编辑器 -->
    <div id="positionDialog" class="easyui-dialog" style="width:240px;height:420px;padding:10px 10px" closed="true" buttons="#positionDialogButtons">
	    <div id="tools-imagePositioner-display" class="tools-imagePositioner-display">
	       <img class="easyui-draggable easyui-resizable" data-options="onDrag:imagePositioneronDrag"  src="" >
	    </div>
	</div>
	<div id="positionDialogButtons">
	    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="gainPostion()">确定</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#positionDialog').dialog('close')">取消</a>
	</div>
</body>
	<script>
       var params = {
           id: '',
           mode: 'insert'
       };
       var imgExtData = {
    	   width:'130',
    	   height:'200',
    	   offsetX:'40',
    	   offsetY:'140'
       }
       var grid;
       var growGrid;     
       // 加载本地配置数据
       var localTypeList = getRemoteData('<%=basePath%>codeType/data',loadLocalTypeList);
       var localLandList = getRemoteData('<%=basePath%>codeLand/data',loadLocalLandList);
       var localStateList = getRemoteData('<%=basePath%>codeState/data',loadLocalStateList);  
       $(document).ready(function () {    
           //配置种子表格
           grid = $('#grid').edatagrid({
               title: '种子清单',
               /* fit:true, */
               height:490,
               method: 'post',
               url: '<%=basePath%>/seed/gridData',
               saveUrl: '<%=basePath%>/seed/save',
               updateUrl: '<%=basePath%>/seed/save',
               destroyUrl: '<%=basePath%>/seed/delete',               
               border: false,
               rownumbers: true,
               remoteSort: true,
               nowrap: false,
               singleSelect: true,
               fitColumns: true,
               pagination: true,
               striped: true,
               autoSave: true,
               idField: "id",               
               columns: [[
                   {field: 'id', title: 'ID', width: 50, sortable: true, align: 'center', halign: 'center'},
                   {field: 'seedId', title: '种子ID', width: 50, sortable: true, align: 'center', halign: 'center'},
                   {field: 'name', title: '种子名称', width: 100, sortable: true, align: 'center', halign: 'center'},
                   {field: 'harvestNum', title: 'X季作物', width: 100, align: 'center', halign: 'center',
                	   formatter: function (value, row) {
                           return value + '季作物';
                       }
                   },
                   {field: 'grade', title: '种子等级', width: 100, align: 'center', halign: 'center',
                	   formatter: function (value, row) {
                           return value + '级作物';
                       }
                   },
                   {field: 'type', title: '种子类型', width: 100, align: 'center', halign: 'center',
                	   formatter: function (value, row) {
                		   return fromCode2Caption(value,localTypeList);             
                       }
                   },
                   {field: 'experience', title: '可获经验', width: 50, align: 'center', halign: 'center'},
                   {field: 'matureTime', title: '每季成熟所需时间', width: 50, align: 'center', halign: 'center',
                	   formatter: function (value, row) {
                           return value + '秒';
                       }
                   },
                   {field: 'fruitNum', title: '每季成熟可获收成', width: 50, align: 'center', halign: 'center'},
                   {field: 'seedPrice', title: '种子采购价', width: 70, align: 'center', halign: 'center',
                	   formatter: function (value, row) {
                           return value + '金币';
                       }
                   },
                   {field: 'fruitPrice', title: '每个收获的果实单价', width: 70, align: 'center', halign: 'center',
                	   formatter: function (value, row) {
                           return value + '金币';
                       }
                   },
                   {field: 'land', title: '土地需求', width: 70, align: 'center', halign: 'center',
                	   formatter: function (value, row) {
                		   return fromCode2Caption(value,localLandList); 
                       }
                   },
                   {field: 'integral', title: '每季成熟可获积分', width: 70, align: 'center', halign: 'center',
                	   formatter: function (value, row) {
                           return value + '分';
                       }
                   },
                   {field: 'tip', title: '提示信息', width: 150, align: 'center', halign: 'center'},
                   {field: 'operation', title: '操作', width: 100, align: 'center',halign: 'center',
                       formatter: function (value, row) {
                       	   var btn = '<a class="operation" onclick="loadGrow()">成长阶段</a> ';
                           return btn;
                      }
              		}
               ]],
               destroyMsg: {
                   norecord: {
                       title: '警告',
                       msg: '首先需要选中记录，然后在点击删除按钮'
                   },
                   confirm: {
                       title: '确认',
                       msg: '是否删除选中记录?'
                   }
               },              
               onSuccess: function (index, result) {
                   console.log(result);
                   $("#msgBox").text(result.msg);
               },
               onDestroy: function (index, result) {
                   console.log(result);
                   $("#msgBox").text(result.msg);
               },
               onLoadSuccess: function (data) {
                   $('.operation').linkbutton({ text: '成长阶段' });
                }
           });
           //配置成长阶段表格
           growGrid = $('#growGrid').edatagrid({
               title: '成长阶段定义',
               fit:true, 
               method: 'post',
               url: '<%=basePath%>/grow/gridData',
               saveUrl: '<%=basePath%>/grow/save',
               updateUrl: '<%=basePath%>/grow/save',
               destroyUrl: '<%=basePath%>/grow/delete',               
               border: false,
               rownumbers: true,
               remoteSort: true,
               nowrap: false,
               singleSelect: true,
               fitColumns: true,
               pagination: true,
               striped: true,
               autoSave: true,
               idField: "id",               
               columns: [[
                   {field: 'id', title: 'ID', width: 50, align: 'center', halign: 'center'},
                   {field: 'seedId', title: '种子ID', width: 50, align: 'center', halign: 'center'},
                   {field: 'stage', title: '生长阶段', width: 70, sortable: true, align: 'center', halign: 'center',
                	   editor: {
                           type: 'validatebox',
                           options: {
                               validType: 'length[1,2]',
                               invalidMessage: '有效长度1-2',
                               required: true
                           }
                       }
                   },
                   {field: 'title', title: '生长阶段标题', width: 80, sortable: true, align: 'center', halign: 'center',
                	   editor: {
                           type: 'validatebox',
                           options: {
                               validType: 'length[1,10]',
                               invalidMessage: '有效长度1-10',
                               required: true
                           }
                       }
                   },
                   {field: 'growthTime', title: '阶段生长时间', width: 100, sortable: true, align: 'center', halign: 'center',
                	   editor: {
                           type: 'validatebox',
                           options: {
                               validType: 'length[1,5]',
                               invalidMessage: '有效长度1-5',
                               required: true
                           }
                       }
                   },
                   {field: 'insect', title: '生虫概率', width: 70, sortable: true, align: 'center', halign: 'center',
                	   editor: {
                           type: 'validatebox',
                           options: {
                               validType: 'length[1,5]',
                               invalidMessage: '有效长度1-5',
                               required: true
                           }
                       }
                   },
                   {field: 'width', title: '宽度', width: 50, sortable: true, align: 'center', halign: 'center',
                	   editor: {
                           type: 'validatebox',
                           options: {
                               validType: 'length[1,5]',
                               invalidMessage: '有效长度1-5',
                               required: true
                           }
                       }
                   },
                   {field: 'height', title: '高度', width: 50, sortable: true, align: 'center', halign: 'center',
                	   editor: {
                           type: 'validatebox',
                           options: {
                               validType: 'length[1,5]',
                               invalidMessage: '有效长度1-5',
                               required: true
                           }
                       }
                   },
                   {field: 'offsetX', title: 'offsetX', width: 50, sortable: true, align: 'center', halign: 'center',
                	   editor: {
                           type: 'validatebox',
                           options: {
                               validType: 'length[1,5]',
                               invalidMessage: '有效长度1-5',
                               required: true
                           }
                       }
                   },
                   {field: 'offsetY', title: 'offsetY', width: 50, sortable: true, align: 'center', halign: 'center',
                	   editor: {
                           type: 'validatebox',
                           options: {
                               validType: 'length[1,5]',
                               invalidMessage: '有效长度1-5',
                               required: true
                           }
                       }
                   },
                   {field: 'state', title: '作物状态', width: 100,sortable: true, align: 'center', halign: 'center',
                	   formatter: function (value, row) {
                		   return fromCode2Caption(value,localStateList); 
                       },
                       editor: {
                           type: 'combobox',
                           options: {
                               valueField: 'code',
                               textField: 'caption',
                               panelHeight: 'auto',
                               required: true
                           }
                       }
                   }
               ]],
               destroyMsg: {
                   norecord: {
                       title: '警告',
                       msg: '首先需要选中记录，然后在点击删除按钮'
                   },
                   confirm: {
                       title: '确认',
                       msg: '是否删除选中记录?'
                   }
               },     
               onSuccess: function (index, result) {
                   console.log(result);
                   $("#msgBox").text(result.msg);
               },
               onDestroy: function (index, result) {
                   console.log(result);
                   $("#msgBox").text(result.msg);
               },
               onDblClickCell: function(index,result){
           		   let ed = growGrid.datagrid( 'getEditor',{index:index,field: 'state' });
           		   if(ed)
               	   	   $(ed.target).combobox( 'loadData' , localStateList); 
           	   } ,
               onCheck: function(index,result){
           		   let ed = growGrid.datagrid( 'getEditor',{index:index,field: 'state' });
           		   if(ed)
               	   	   $(ed.target).combobox( 'loadData' , localStateList); 
           	   } 
            	
           });
           // 页面加载完成时准备的函数
           grid.datagrid("getPager").pagination({
               pageSize: 5,
               pageList: [5, 10, 15, 20]
           });
           loadGrow = function () {              	   
        	   var row = grid.datagrid('getSelected');     
        	   if (row) {        		   
                   params.id = row.id;
                   params.mode = 'edit'; 
                   $('#cropGrowth').dialog('open').dialog('setTitle', '编辑生长阶段');
                   growGrid.datagrid("load", {
                	   seedId: row.seedId
                   });
               } else {
                   alert("请先选择一行数据，然后再尝试点击操作按钮！");
               }        	   
           };                      
       });       
       /*   全局函数 */ 
       //种子
       function doSearch() {
           grid.datagrid("load", {
               name: $("#nameSearch").val()
           });
       }
       function loadForm() {
           var row = grid.datagrid('getSelected');
           if (row) {
        	   console.log(row);
               params.id = row.id;
               params.mode = 'edit';
               $("#formSeed_id").textbox('setValue',row.id);
               $('#formSeedContainer').dialog('open').dialog('setTitle', '编辑数据');
               $('#formSeed').form('load', row);
           } else {
               alert("请先选择一行数据，然后再尝试点击操作按钮！");
           }
       }
       function addForm() {  
    	   params.id = 0;
           params.mode = 'add';
           $('#formSeedContainer').form('clear');
           $("#formSeed_id").textbox('setValue','0');
           $('#formSeedContainer').dialog('open').dialog('setTitle', '添加数据');  
       }
       function saveForm() {
           $('#formSeed').form('submit', {
               url: '<%=basePath%>/seed/save',
               onSubmit: function (param) {
                   param.id = params.id;
                   param.mode = params.mode;
                   return $(this).form('validate');
               },
               success: function (result) {
                   var result = eval('(' + result + ')');
                   if (result.code == 0) {
                       $('#formSeedContainer').dialog('close');
                       grid.datagrid('reload');
                   }
                   $.messager.show({
                       title: "消息",
                       msg: result.msg
                   });
               }
           });
       }
       //成长阶段
       function loadGrowForm() {
           var row = growGrid.datagrid('getSelected');
           if (row) {
               params.id = row.id;
               params.mode = 'edit';
               $("#formGrow_id").textbox('setValue',row.id);
               $('#formGrowContainer').dialog('open').dialog('setTitle', '编辑数据');
               $('#formGrow').form('load', row);
           } else {
               alert("请先选择一行数据，然后再尝试点击操作按钮！");
           }
       }
       function addGrowForm(){
    	   params.id = 0;
           params.mode = 'add';
           $('#formGrowContainer').form('clear');
    	   var row = grid.datagrid('getSelected'); 
    	   $("#formGrow_seedId").textbox('setValue',row.seedId);
    	   $("#formGrow_id").textbox('setValue','0');
           $('#formGrowContainer').dialog('open').dialog('setTitle', '添加数据');  
       }
       function saveGrowForm() {
           $('#formGrow').form('submit', {
               url: '<%=basePath%>/grow/save',
               onSubmit: function (param) {
                   param.id = params.id;
                   param.mode = params.mode;
                   return $(this).form('validate');
               },
               success: function (result) {
                   var result = eval('(' + result + ')');
                   if (result.code == 0) {
                       $('#formGrowContainer').dialog('close');
                       growGrid.datagrid('reload');
                   }
                   $.messager.show({
                       title: "消息",
                       msg: result.msg
                   });
               }
           });
       }
       // 图片编辑
       function loadPositionDialog() {
           if ($("#formGrow_width").numberbox("getValue")) {     
               imgExtData.width = $("#formGrow_width").numberbox("getValue");
               imgExtData.height= $("#formGrow_height").numberbox("getValue");
               imgExtData.offsetX= $("#formGrow_offsetX").numberbox("getValue");
               imgExtData.offsetY= $("#formGrow_offsetY").numberbox("getValue");
               positionerLoadImage();
           } else {
        	   positionerLoadImage();
           }
           if ($("#formGrow_stage").numberbox("getValue")) {
        	   let stage = $("#formGrow_stage").numberbox("getValue");
        	   let seedId = $("#formGrow_seedId").numberbox("getValue"); 
        	   let reg = /^(?:1|[2-5]?|5)$/;
        	   let url = '<%=basePath%>/images/crops/basic/9.png';
        	   if(stage == 0)
        		   url = '<%=basePath%>/images/crops/basic/'+stage+'.png'; 
        	   if(reg.test(stage))
        		   url = '<%=basePath%>/images/crops/'+seedId+'/'+stage+'.png';
        	   $('#tools-imagePositioner-display').find("img").attr("src",url);
        	   $('#positionDialog').dialog('open').dialog('setTitle', '定位编辑器');
           } else {
        	   alert("请先输入生长阶段！");
           }    	   
       }
       function gainPostion() {
    	   console.log(imgExtData);
    	   $("#formGrow_width").textbox('setValue',imgExtData.width);
    	   $("#formGrow_height").textbox('setValue',imgExtData.height);
    	   $("#formGrow_offsetX").textbox('setValue',imgExtData.offsetX);
    	   $("#formGrow_offsetY").textbox('setValue',imgExtData.offsetY);
    	   $('#positionDialog').dialog('close');
       }
       // 本地配置
       function loadLocalTypeList(data) {    	   
    	   return localTypeList = data;
       }
       function loadLocalLandList(data) {
    	   return localLandList = data;
       }
       function loadLocalStateList(data) {
    	   return localStateList = data;    	   
       }
   </script>
  
</html>