<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
	<div region="center" style="padding:1px;">
		<t:datagrid name="zformPersonList" checkbox="true" fitColumns="false" title="人员基本信息数据库" actionUrl="zformPersonController.do?datagrid&status=1" idField="id" fit="true" queryMode="group">
			<t:dgCol title="主键" field="id" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="人员编号" field="code" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="序号" field="seqNo" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="人员姓名" field="name" query="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="性别" field="sex" query="true" queryMode="single" dictionary="sex" width="120"></t:dgCol>
			<t:dgCol title="出生日期" field="birthday" formatter="yyyy-MM-dd" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="年龄" field="age" query="true" queryMode="group" width="120"></t:dgCol>
			<t:dgCol title="身份证号码" field="photoIdNo" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="民族" field="nationality" query="true" queryMode="single" dictionary="national" width="120"></t:dgCol>
			<t:dgCol title="政治面貌" field="socialStatus" query="true" queryMode="single" dictionary="social_s" width="120"></t:dgCol>
			<t:dgCol title="参加工作时间" field="startWorkDate" formatter="yyyy-MM-dd" query="true" queryMode="group" width="120"></t:dgCol>
			<t:dgCol title="学历" field="eduBackground" query="true" queryMode="single" dictionary="edu_back" width="120"></t:dgCol>
			<t:dgCol title="学历补充" field="eduExtra" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="学位" field="degree" query="true" queryMode="single" dictionary="degree" width="120"></t:dgCol>
			<t:dgCol title="专业" field="major" query="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="毕业时间" field="graduateDate" formatter="yyyy-MM-dd" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="毕业学校" field="graduateSchool" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="联系电话" field="contactNo" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="家庭住址" field="homeAddress" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="进入行业方式" field="enterApproach" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="进入行业时间" field="enterDate" formatter="yyyy-MM-dd" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="初级职称取得时间" field="juniorTitleDate" formatter="yyyy-MM-dd" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="中级职称取得时间" field="secondaryTitleDate" formatter="yyyy-MM-dd" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="高级职称取得时间" field="seniorTitleDate" formatter="yyyy-MM-dd" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="照片" field="photo" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="备注" field="comments" hidden="true" queryMode="single" width="120"></t:dgCol>
			<t:dgCol title="目前状态" field="currentStatus" hidden="true" queryMode="single" dictionary="status" width="120"></t:dgCol>
			<t:dgCol title="操作" field="opt" width="100"></t:dgCol>
			<t:dgDelOpt title="删除" url="zformPersonController.do?doDel&id={id}" />
			<t:dgToolBar title="录入" icon="icon-add" url="zformPersonController.do?goAdd&status=1" funname="add"></t:dgToolBar>
			<t:dgToolBar title="编辑" icon="icon-edit" url="zformPersonController.do?goUpdate&status=1" funname="update"></t:dgToolBar>
			<t:dgToolBar title="批量删除" icon="icon-remove" url="zformPersonController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
			<t:dgToolBar title="查看" icon="icon-search" url="zformPersonController.do?goUpdate&status=1" funname="detail"></t:dgToolBar>
			<t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
			<t:dgToolBar title="生成电子简历" icon="icon-putout" funname="ExportPersonalResume"></t:dgToolBar>
			<t:dgToolBar title="生成统计表" icon="icon-putout" url="zformPersonController.do?ExportStat" funname="ExportStat"></t:dgToolBar>
			<t:dgToolBar title="转入退休审核" icon="pictures" url="zformPersonController.do?doTo_RetireAudit" funname="doTo_RetireAudit"></t:dgToolBar>
			<t:dgToolBar title="转入调出审核" icon="pictures" url="zformPersonController.do?doTo_TrasnferExternalAudit" funname="doTo_TrasnferExternalAudit"></t:dgToolBar>
			<t:dgToolBar title="转入死亡审核" icon="pictures" url="zformPersonController.do?doTo_DeathAudit" funname="doTo_DeathAudit"></t:dgToolBar>
		</t:datagrid>
	</div>
</div>
<script src="webpage/com/buss/person/zformPersonList.js"></script>
<script type="text/javascript">
 $(document).ready(function(){
 		//给时间控件加上样式
 			$("#zformPersonListtb").find("input[name='birthday']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#zformPersonListtb").find("input[name='startWorkDate']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#zformPersonListtb").find("input[name='graduateDate']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#zformPersonListtb").find("input[name='enterDate']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#zformPersonListtb").find("input[name='juniorTitleDate']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#zformPersonListtb").find("input[name='secondaryTitleDate']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#zformPersonListtb").find("input[name='seniorTitleDate']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#zformPersonListtb").find("input[name='startWorkDate_begin']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 			$("#zformPersonListtb").find("input[name='startWorkDate_end']").attr("class","Wdate").attr("style","height:20px;width:90px;").click(function(){WdatePicker({dateFmt:'yyyy-MM-dd'});});
 });
 	//自定义按钮-sql增强-转入退休审核
 	function doTo_RetireAudit(title,url,id){
 		var rowData = $('#'+id).datagrid('getSelected');
		if (!rowData) {
			tip('请选择转入退休审核项目');
			return;
		}
		url = url+"&id="+rowData['id'];
 		createdialog('确认 ', '确定'+title+'吗 ?', url,gridname);
 	}
 	
 	//自定义按钮-sql增强-转入调出审核
 	function doTo_TrasnferExternalAudit(title,url,id){
 		var rowData = $('#'+id).datagrid('getSelected');
		if (!rowData) {
			tip('请选择转入调出审核项目');
			return;
		}
		url = url+"&id="+rowData['id'];
 		createdialog('确认 ', '确定'+title+'吗 ?', url,gridname);
 	}
 	
 	//自定义按钮-sql增强-转入死亡审核
 	function doTo_DeathAudit(title,url,id){
 		var rowData = $('#'+id).datagrid('getSelected');
		if (!rowData) {
			tip('请选择转入死亡审核项目');
			return;
		}
		url = url+"&id="+rowData['id'];
 		createdialog('确认 ', '确定'+title+'吗 ?', url,gridname);
 	}
 	 	
//导入
function ImportXls() {
	openuploadwin('Excel导入', 'zformPersonController.do?upload', "zformPersonList");
}

//导出
function ExportXls(title,url,id) {	
	JeecgExcelExport("zformPersonController.do?exportXls&currentStatus=1","zformPersonList");
}


function ExportPersonalResume(title, url, id) {
	var rowData = $('#' + id).datagrid('getSelected');
	if (!rowData) {
		tip('请选择生成电子简历的人员');
		return;
	}		
	JeecgExcelExport("zformPersonController.do?exportPersonalResume&id="+rowData['id'], "zformPersonList");		
}

function ExportStat() {
	JeecgExcelExport("zformPersonController.do?exportStat","zformPersonList");
}
 </script>