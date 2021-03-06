<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/templates/default/share/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<META http-equiv=Content-Language content=zh-CN>
<TITLE>文章管理</title> 
<%@ include file="/WEB-INF/templates/default/share/backstage_location_check.jsp" %>
<link href="css/style.css" rel="stylesheet" type="text/css">

<link href="css/product/list.css" rel="stylesheet" type="text/css" />
<link href="css/global/topsell.css" rel="stylesheet" type="text/css">
<LINK href="css/new_cart.css" rel="stylesheet" type="text/css">

<script>
function actionEvent(methodname,methods){
	var form = document.forms[0];
	//if(validateIsSelect(form.all, form.productIds)){
		form.action='/control/center/article/manage.do?method=delete&id=${id}';
		//form.method.value=methodname;
		//form.yesOrNo.value=methods;
		//alert(form.yesOrNo.value);
		form.submit();
	//}else{
	//	alert("请选择要操作的记录");
	//}
}

function getDeleteIds(){
var ids="";
	for(var i=0;i<document.forms[0].articleIds.length;i++){
		if(document.forms[0].articleIds[i].checked)
			ids+=document.forms[0].articleIds[i].value;
		}
	//alert(ids);
	document.forms[0].ids[i].value=ids;
	//return ids;
}
</script>
  </head>
  
  <body marginwidth="0" marginheight="0">
<form action="control/center/article/manage.do" method="post">

<table width="100%" cellspacing="1" cellpadding="2" border="0" align="center">
    <tbody><tr><td bgcolor="#6f8ac4" align="right" colspan="6">
	 总记录数:${pm.total}条  <div class="pagesplit">  <%
  
String pageSplits = ConstantString.generatePageSplit(
		((PageModel)request.getAttribute("pm")).getTotal(),
		"control/center/article/manage.do?id="+request.getAttribute("id"));
out.println(pageSplits);
%>  </div>

   </td></tr>
    <tr>
      <td width="5%" bgcolor="#6f8ac4"> <div align="center"><font color="#FFFFFF">文章ID</font></div></td>
      <td width="20%" bgcolor="#6f8ac4"> <div align="center"><font color="#FFFFFF">文章名称</font></div></td>
            <td width="20%" bgcolor="#6f8ac4"> <div align="center"><font color="#FFFFFF">文章路径</font></div></td>
            <td width="20%" bgcolor="#6f8ac4"> <div align="center"><font color="#FFFFFF">显示模板</font></div></td>
      <td width="15%" bgcolor="#6f8ac4"> <div align="center"><font color="#FFFFFF">创建时间</font></div></td>
	  <td nowrap bgcolor="#6f8ac4"> <div align="center"><font color="#FFFFFF">操作</font></div></td>
    </tr>
<!---------------------------LOOP START------------------------------>
<c:forEach items="${pm.datas}" var="article">
    <tr>
      <td bgcolor="#f5f5f5"> <div align="center"><INPUT TYPE="checkbox" NAME="ids" value="${article.id}">${article.id }</div></td>
	  <td bgcolor="#f5f5f5"> <div align="center"><a href="control/center/article/manage.do?id=${article.type.id }&pId=${article.id}">${article.name }</a></div></td>
  <td bgcolor="#f5f5f5"> <div align="center">${article.url }</div></td>
   <td bgcolor="#f5f5f5"> <div align="center">
   <c:if test="${!empty article.templateUrl}">${article.templateUrl }
   <a href="control/center/article/manage.do?method=editTemplate&id=${article.id }&id=${article.type.id }&pId=<c:if test="${!empty article.parent}">${article.parent.id}</c:if>&templateUrl=${article.templateUrl}">
   编辑</a></c:if></div></td>	  
	  <td bgcolor="#f5f5f5"> <div align="center">${article.date }</div></td>	  
	  <td bgcolor="#f5f5f5"> <div align="center">
	  <a href="control/center/article/manage.do?method=edit&id=${article.id }&id=${article.type.id }&pId=<c:if test="${!empty article.parent}">${article.parent.id}</c:if>">编辑</a>
	  <a href="control/center/article/manage.do?method=delete&id=${article.id }&id=${article.type.id }&pId=${articleForm.pId }">删除</a>
	  </div></td>
</tr>
</c:forEach>
  </table>
  
  <div><a href="control/center/article/manage.do?method=addInput&id=${articleForm.id }&pId=${articleForm.pId}<c:if test="${articleForm.categoryId >0}">&categoryId=${articleForm.categoryId}</c:if>">添加文章</a>&nbsp;&nbsp;
<c:choose>
 <c:when test="${articleForm.id  eq 'category'}">
<!-- <a href="/control/product/category/manage.do?categoryId=${articleForm.categoryId} -->
 <a href="control/product/category/manage.do">回到产品类别</a>
  
 </c:when>
 <c:otherwise>
 <input type="button" value="删除" onclick="javascript:actionEvent('delete','')"/>&nbsp;&nbsp;<a href="control/center/article/manage.do?id=${articleForm.id }&pId=${returnto}">返回上级</a>
  </c:otherwise>
</c:choose>
 </div>
 </form>
  </body>
</html>
