<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/css/bootstrap.css">
	
<title>最美城市</title>
</head>

<body>
<marquee>修改城市得分</marquee>
<form role="form" id="myForm">
	  <h1 class="text-center" style="color:blue;">修改[${clist.cname}]的城市得分</h1>
	  <input type="hidden" name="cid" value="${clist.cid}">
	  <hr/>
	  <div class="form-group">
		    <label for="exampleInputEmail1">社会文明度:</label>
			<input type="text" class="form-control" value="${clist.shwm}" name="shwm" id="1">
	  </div>
	  <div class="form-group">
		    <label for="exampleInputEmail1">经济富裕度:</label>
			<input type="text" class="form-control" value="${clist.jjfy}" name="jjfy" id="2">
	  </div>
	  <div class="form-group">
		    <label for="exampleInputEmail1">环境优美度:</label>
			<input type="text" class="form-control" value="${clist.hjym}" name="hjym" id="3">
	  </div>
	  <div class="form-group">
		    <label for="exampleInputEmail1">资源承载度:</label>
			<input type="text" class="form-control" value="${clist.zycz}" name="zycz" id="4">
	  </div>
	  <div class="form-group">
		    <label for="exampleInputEmail1">生活便宜度:</label>
			<input type="text" class="form-control" value="${clist.shpy}" name="shpy" id="5">
	  </div>
	  <div class="form-group">
		    <label for="exampleInputEmail1">公共安全度:</label>
			<input type="text" class="form-control" value="${clist.ggaq}" name="ggaq" id="6">
	  </div>
	  <button type="button" class="btn btn-danger" onclick="seach()">更新</button>	
</form>
<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script type="text/javascript">
	function  seach() {
		var value1 = $("#1").val();
		var value2 = $("#2").val();
		var value3 = $("#3").val();
		var value4 = $("#4").val();
		var value5 = $("#5").val();
		var value6 = $("#6").val();
		var reg = /^([1-9]\d|[0-9]|100)$/;
		if(reg.test(value1)&&reg.test(value2)&&reg.test(value3)&&reg.test(value4)&&reg.test(value5)&&reg.test(value6)){
			$.post("<%=request.getContextPath() %>/toUpdate",$("#myForm").serialize(),function(obj){
				if(obj)
				{
					alert("保存成功");
					location="<%=request.getContextPath() %>/list";
				}else{
					alert("操作失败");
				}
			},"json");
		}else{
			alert("取值区间必须为[0,100]");
		}	
	}
</script>
</body>
</html>