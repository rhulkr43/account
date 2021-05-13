<%@page import="com.dmjl.entities.PaymentAccount"%>
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
<h1 class="text-center">Edit Account Type</h1>
<%
PaymentAccount paymentAccount=(PaymentAccount)request.getAttribute("list"); 

%>
</div>
</div>
</div>
<div class="row">
	<div class="col-lg-12 col-sm-12 col-md-12" style="margin-top:2%">
		<div class="card" >
    <div class="card-header card bg-primary text-white">Account Type Edit</div>
    <div class="card-body">
     <form action="<%=request.getContextPath()+"/payment/account/type"%>" method="POST" modelAttribute="paymentAccount">
    <div class="form-group">
     
      <input type="hidden" class="form-control" value="<%=paymentAccount.getPayment_account_id() %>" id="payment_account_id"  name="payment_account_id">
    </div>
    <div class="form-group">
      <label for="email">Account Type</label>
      <input type="text" class="form-control" value="<%=paymentAccount.getAccount_type() %>" id="account_type" placeholder="Account Type" name="account_type">
    </div>
      <div class="form-group">
      <label for="pwd">Status</label>
      <select class="form-control" name="account_status" >
      <option><%=paymentAccount.getAccount_status() %></option>
      <option>In</option>
      <option>Out</option>
      </select>
    </div>
    <div class="form-group">
      <label for="pwd">Account Remark</label>
      <input type=""text"" class="form-control" value="<%=paymentAccount.getAccount_remarkString() %>"  id="account_remarkString" placeholder="Account Remark" name="account_remarkString">
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