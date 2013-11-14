<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="cart" class="com.tom.Cart" scope="session"></jsp:useBean>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border=1>
<c:forEach items="${cart.items }" var="item">
<tr>
	<td>${item.id }</td>
	<td>${item.name }</td>
	<td>${item.price }</td>
	<td>${item.qty }</td>
	<td>${item.qty*item.price }</td>
</tr>
</c:forEach>
</table>
合計: ${cart.total }
<p><a href="">回上一個頁面</a></p>
<p><a href="product_list.jsp">回產品清單</a></p>
</body>
</html>