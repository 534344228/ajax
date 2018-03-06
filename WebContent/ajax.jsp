<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("span").hover(function() {
			//over
			$(this).css("background-color", "yellow");
			$("#productInfo").load("searchProduct", {
				'category' : $(this).text()
			});
		}, function() {
			//out
			$(this).css("background-color", "white");
			$("#productInfo").empty();
		});
	});
</script>
</head>
<body>
	<h2>分类信息</h2>
	<span>数码产品</span>
	<span>家用电器</span>
	<span>化妆护肤</span>
	<hr>
	<div id="productInfo"></div>
</body>
</html>