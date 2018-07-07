<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/css/bootstrap.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script type="text/javascript">
	function SetList() {
		var sort = $("#cy").val();
		location.href="<%=request.getContextPath() %>/list?sort="+sort;		
	}
	function UpdateWeight(){
		location.href="<%=request.getContextPath() %>/weight";
	}
	function UpdateCity() {		
		var cid = $("[name='ck']:checked").val();
		//alert(cid);
		if(cid==null){
			alert("请选择一个城市");
		}else{			
			location.href="<%=request.getContextPath() %>/UpdateCity?cid="+cid;
		}
	}
</script>
</head>
<body>
	<div class="h2" style="text-align:center"><b>中国十大宜居城市管理</b></div>
	  <div class="col-md">
      <div class="row">
			<div class="col-md-2">
				<select class="form-control" id="cy">
		    		<option value="shwm">社会文明度</option>
					<option value="jjfy">经济富裕度</option>
					<option value="hjym">环境优美度</option>
					<option value="zycz">资源承载度</option>
					<option value="shpy">生活便宜度</option>
					<option value="ggaq">公共安全度</option>
		  		</select>
			</div>
			<div class="col-md-2"><button class="btn btn-success" onclick="SetList()">按单项条件排名</button></div>
			<div class="col-md-1"><button class="btn btn-success"  onclick="UpdateWeight()">权重设置</button></div>
			<div class="col-md-1"><button class="btn btn-success" onclick="UpdateCity()">修改城市得分</button></div>
      </div>
    </div>
<div class="table-responsive">
  <table class="table table-hover">
    <tr>
      <th></th>
      <th>排名</th>
      <th>城市</th>
      <th>社会文明度<br>(权重${wlist.shwm})</th>
      <th>经济富裕度<br>(权重${wlist.jjfy})</th>
      <th>环境优美度<br>(权重${wlist.hjym})</th>
      <th>资源承载度<br>(权重${wlist.zycz})</th>
      <th>生活便宜度<br>(权重${wlist.shpy})</th>
      <th>公共安全度<br>(权重${wlist.ggaq})</th>
      <th>总分</th>
    </tr>
    <c:forEach items="${clist}" var="l" varStatus="z">
    	<tr>
    		<td><input type="radio" name="ck" value="${l.cid}"></td>
    		<td>${z.count}</td>
    		<td>${l.cname}</td>
    		<td>${l.shwm}</td>
    		<td>${l.jjfy}</td>
    		<td>${l.hjym}</td>
    		<td>${l.zycz}</td>
    		<td>${l.shpy}</td>
    		<td>${l.ggaq}</td>
			<td>${l.shwm*wlist.shwm+l.jjfy*wlist.jjfy+l.hjym*wlist.hjym+l.zycz*wlist.zycz+l.shpy*wlist.shpy+l.ggaq*wlist.ggaq}</td>
    	</tr>
    </c:forEach>
  </table>
</div>
</body>
</html>