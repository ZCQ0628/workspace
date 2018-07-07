<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="<%=request.getContextPath()%>/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jquery/jquery.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/bootstrap/bootstrap.min.js"></script>

<title>最美城市</title>
</head>
<script type="text/javascript">
	
</script>
<body>
友情提示:${msg}
<form id="ff" method="post" role="form" action="<%=request.getContextPath()%>/getUpdate">
 <table class="table table-striped table-hover table-responsive table-bordered">
   <thead>
     <tr>
       <th>社会文明度</th>
       <th>经济富裕度</th>
       <th>环境优美度</th>
       <th>资源承载度</th>
       <th>生活便宜度</th>
       <th>公共安全度</th>
       
     </tr>
   </thead>

   	<tr>
   		<td><input type="text" name="shwm" value="${list.shwm}"></td>
   		<td><input type="text" name="jjfy" value="${list.jjfy}"></td>
   		<td><input type="text" name="hjym" value="${list.hjym}"></td>
   		<td><input type="text" name="zycz" value="${list.zycz}"></td>
   		<td><input type="text" name="shpy" value="${list.shpy}"></td>
   		<td><input type="text" name="ggaq" value="${list.ggaq}"></td>
   		
   	</tr>

	 </table>
	<button type="submit" class="btn btn-primary" >提交</button>
</form>
</body>
</html>