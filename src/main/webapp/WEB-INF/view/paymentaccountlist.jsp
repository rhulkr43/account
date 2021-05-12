<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Account Type</title>
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
<div class="container">
	<div class="row" style="margin-top: 3%;">
		<div class="col-lg-6 col-sm-6 col-md-6">
		<div class="row">
<div class="col-lg-12 col-sm-12 col-md-12">
 <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>Sr No</th>
        <th>Account Name</th>
        <th>Remark</th>
        <th>View</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
    <% int i=1; %>
    <c:forEach items="${list}" var="list">
     <tr>
        <td><%=i++ %></td>
        <td>${list.name}</td>
        <td>${list.payment_remarkString}</td>
        <td><a href="<%=request.getContextPath()%>/payment/account/view/${list.id}" class="btn btn-primary">View</a></td>
        <td><a href="<%=request.getContextPath()%>/payment/account/delete/${list.id}" class="btn btn-danger">delete</a></td>
        <td><a href="<%=request.getContextPath()%>/payment/account/edit/${list.id}" class="btn btn-info">Edit</a></td>
      </tr>
    </c:forEach>
     
    </tbody>
  </table>
  </div>

</div>
</div>
		</div>
		<div class="col-lg-6 col-sm-6 col-md-6">
		<div class="card" >
    <div class="card-header card bg-primary text-white">Account Type</div>
    <div class="card-body">
     <form action="<%=request.getContextPath()+"/payment/account/save"%>" method="POST" modelAttribute="payment">
    <div class="form-group">
       <input type="hidden" class="form-control" id="id" placeholder="Account Type" value="0" name="id">
   
      <label for="email">Payment Type</label>
      <input type="text" class="form-control" id="name" placeholder="Account Type" name="name">
    </div>
    <div class="form-group">
      <label for="pwd">Payment Remark</label>
      <input type=""text"" class="form-control" id="payment_remarkString" placeholder="Account Remark" name="payment_remarkString">
    </div>
   
   
    </div> 
    
    
    <div class="card-footer"> <button type="submit" class="btn btn-primary">Submit</button>
  </form></div>
  </div>
		</div>
	<div class="col-lg-2 col-sm-2 col-md-2"></div>
		</div>
</div>

</body>
</html>