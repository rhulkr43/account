<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.dmjl.entities.Account"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account</title>

</head>
<body>
<%
Account account5=(Account) request.getAttribute("account5");
%>
<jsp:include page="../nav.jsp"></jsp:include>
<div class="container">
  <h2>Edit Payment Entry</h2>
  <form action="<%=request.getContextPath()%>/payment/addsave" method="POST">
  <input type="hidden" name="id" value="<%=account5.getId()%>"/>
    <div class="form-group">
      <label for="email">Name</label>
      <input type="text" class="form-control" value="<%=account5.getName()%>" id="name" placeholder="Enter Name" name="name">
    </div>
    <div class="form-group">
      <label for="pwd">Account Type</label>
      <select class="form-control" name="account_type" >
      <option><%=account5.getAccount_type()%></option>
      <c:forEach var="account" items="${account}">
      <option value="${account.account_type}">${account.account_type}</option>
      </c:forEach>
      </select>
    </div>
  <div class="form-group">
      <label for="pwd">Payment Type</label>
      <select class="form-control" name="payment_type">
      <option><%=account5.getPayment_type()%></option>
         <c:forEach var="payment" items="${payment}">
       <option value="${payment.name}">${payment.name}</option>
     
      </c:forEach>
      </select>
    </div>
     <div class="form-group">
      <label for="email">Amount</label>
      <input type="text" class="form-control" value="<%=account5.getAmount() %>" id="name" placeholder="Enter Amount" name="amount">
    </div>
    <div class="form-group">
      <label for="email">Remark</label>
      <input type="text" class="form-control" id="name" value="<%=account5.getRemark() %>" placeholder="Enter Remark" name="remark">
    </div>
    <button type="submit" class="btn btn-primary">Update</button>
  </form>
</div>
</body>

</html>