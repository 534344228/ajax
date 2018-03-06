<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>账号注册</title>
</head>
<body>
	<form action="" method="post">
		用户名:<input type="text" name="username" id="username" onblur="validateUsername()"><br />
		密码:<input type="password" name="password" id="password"><br />
		<input type="submit" value="注册">
	</form>
</body>
<script type="text/javascript">
	var xmlHttp;
	function createXMLHttpRequest() {
		if (window.XMLHttpRequest) {
			//  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
			xmlHttp = new XMLHttpRequest();
		} else {
			// IE6, IE5 浏览器执行代码
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		return xmlHttp;
	}
	function validateUsername() {
		//1.创建xmlHttp对象
		createXMLHttpRequest();
		//2.绑定状态触发器到函数上
		xmlHttp.onreadystatechange = callback;
		//3.建立与服务器的连接
		var username = document.getElementById("username").value;
		xmlHttp.open("GET", "/AjaxWeb/checkUsername?username=" + username);
		//4.发送请求参数
		xmlHttp.send(null);
	}
	//5.回调函数
	function callback() {
		//相应完成后对数据进行处理
		if (xmlHttp.readyState == 4) {
			if (xmlHttp.status == 200) {
				var data = xmlHttp.responseText;
				alert(data);
			}
		}
	}
</script>
</html>