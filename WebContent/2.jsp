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
		var $data;
		$.get("1.xml", function(data) {
			$data = $(data);
			$data.find("province").each(function() {
				//添加省
				var option = "<option>" + $(this).attr("name") + "</option>";
				$("#province").append(option);
			});
		});
		$("#province").change(function(){
			var province = $("#province").val();
		});
	});
</script>
</head>
<body>
	<select id="province"></select>
	<select id="city"></select>
</body>
</html>