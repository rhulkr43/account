<%@page import="com.dmjl.entities.Payment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account</title>

</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12 col-sm-12" style="margin-top:2%">
<div class="alert alert-success">
<h1 class="text-center">Edit Payment Type</h1>
<%

Payment p=(Payment)request.getAttribute("list");
%>
</div>
</div>
</div>
<div class="row">
	<div class="col-lg-12 col-sm-12 col-md-12" style="margin-top:2%">
		<div class="card" >
    <div class="card-header card bg-primary text-white">Payment Type Edit</div>
    <div class="card-body">
     <form action="<%=request.getContextPath()+"/payment/account/save"%>" method="POST" modelAttribute="payment">
    <div class="form-group">
     
      <input type="hidden" class="form-control" value="<%=p.getId() %>" id="payment_account_id"  name="id">
    </div>
    <div class="form-group">
      <label for="email">Account Type</label>
      <input type="text" class="form-control" value="<%=p.getName() %>" id="name" placeholder="Account Type" name="name">
    </div>
    <div class="form-group">
      <label for="pwd">Account Remark</label>
      <input type=""text"" class="form-control" value="<%=p.getPayment_remarkString() %>"  id="payment_remarkString"  name="payment_remarkString">
    </div>
   
   
    </div> 
    
    
    <div class="card-footer"> <button type="submit" class="btn btn-primary">Update</button>
  </form></div>
  </div>
		</div>
</div>
</div>

</body>

</html>