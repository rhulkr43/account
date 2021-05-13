<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
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
		<div class="col-lg-12 col-sm-12 col-md-12">
		<div class="card" >
    <div class="card-header card bg-primary text-white">Account Type</div>
    <div class="card-body">
     <form:form action=""  modelAttribute="paymentAccount">
    <div class="form-group">
      <label for="email">Account Type</label>
      <form:input  class="form-control" id="account_type" placeholder="Account Type" path="account_type"/>
      <form:errors path="account_type" cssClass="error alert alert-danger"/>
    </div>
     <div class="form-group">
      <label for="pwd">Status</label>
      <form:select  class="form-control" path="account_status" >
      <option>Select Status</option>
      <option>In</option>
      <option>Out</option>
      </form:select>
      <form:errors path="account_status" cssClass="error"/>
    </div>
    <div class="form-group">
      <label for="pwd">Account Remark</label>
      <form:input    class="form-control" id="account_remarkString" placeholder="Account Remark" path="account_remarkString"/>
        <form:errors path="account_remarkString" cssClass="error"/>
    </div>
   
   
    </div> 
    
    
    <div class="card-footer"> <form:button type="submit" class="btn btn-primary">Submit</form:button>
  </form:form></div>
  </div>
		</div>
		<div class="col-lg-12 col-sm-12 col-md-12">
		<div class="row">
<div class="col-lg-12 col-sm-12 col-md-12">
 <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>Sr No</th>
        <th>Account Name</th>
       <th>Status</th>
        <th>Remark</th>
        <th>View</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
    <%
    int i=1;
    %>
    <c:forEach items="${list}" var="list">
     <tr>
        <td><%=i++%> </td>
        <td>${list.account_type}</td>
        <td>${list.account_status}</td>
       
        <td>${list.account_remarkString}</td>
        <td><a href="<%=request.getContextPath()%>/payment/account/type/view/${list.payment_account_id}" class="btn btn-primary">View</a></td>
        <td><a href="<%=request.getContextPath()%>/payment/account/type/edit/${list.payment_account_id}" class="btn btn-primary">Edit</a></td>
        <td><a href="<%=request.getContextPath()%>/payment/account/type/delete/${list.payment_account_id}" class="btn btn-primary">Delete</a></td>
      </tr>
    </c:forEach>
     
    </tbody>
  </table>
  </div>

</div>
</div>
		</div>
	
	<div class="col-lg-2 col-sm-2 col-md-2"></div>
		</div>
</div>

</body>
<style>
.error{
color:red;
}
</style>
</html>