<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#username").blur(function() {
			var username = $(this).val();
			$.post("check", {
				'username' : username
			}, function(data) {
				$("#msg").html(data);
			});
		});
		//----------------------------------
		$("a").click(
				function() {
					$.get("listBook", function(data) {
						//alert(JSON.stringify(data));
						//var jsonObj = $.parseJSON(data);
						//var jsonObj = JSON.parse(data);
						var buffer = "<table border='1'>";
						for (var i = 0; i < data.length; i++) {
							buffer += "<tr><td>" + data[i].id + "</td><td>"
									+ data[i].name + "</td><td>"
									+ data[i].price + "</td></tr>";
						}
						buffer += "</table>";
						$("#showBooks").append(buffer);
					});
				});
		//---------------------------
		
	});
</script>
<title>用户名重名校验哈哈哈</title>
</head>
<body>
	<form action="">
		用户名:<input type="text" id="username"><span id="msg"></span><br>
	</form>
	<hr>
	<a href="javascript:void(0)">显示图书信息</a>
	<hr>
	<div id="showBooks">还没有选择图书信息没有自增</div>
</body>
</html>