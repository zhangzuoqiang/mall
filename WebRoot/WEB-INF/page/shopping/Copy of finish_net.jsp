<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/page/share/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<META http-equiv=Content-Language content=zh-CN>
<TITLE>订单完成</title> 
<%@ include file="/location_check.jsp" %>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/global/header01.css" rel="stylesheet" type="text/css">
<link href="css/product/list.css" rel="stylesheet" type="text/css" />
<link href="css/global/topsell.css" rel="stylesheet" type="text/css">
<LINK href="css/new_cart.css" rel="stylesheet" type="text/css">

</HEAD>
<BODY>
<jsp:include page="/WEB-INF/page/share/head.jsp"/>
<BR>
<h1>订单号:${orderId },应付金额:${shouldToPay }元</h1>
<br>
你选择的付款方式为"网上支付",现在你就可以进行<form action="customer/payment/yeepay" method="post" name="yeepay"/>
<input type="hidden" name="p8_Url" value="http://www.angelinthebox.com/payment.do?method=response">
<input type="hidden" name="hmac" value=""/>
<input type="hidden" name="p2_Order" value="${shouldToPay}"/>
<input type="image" src="" alt="支付"> 
</form>了.
<br/>
<jsp:include page="/WEB-INF/page/share/foot.jsp"/>
</BODY>
</HTML>
