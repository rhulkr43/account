<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account</title>

</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
<div class="container">
  <h2>Add Payment Entry</h2>
  <form action="<%=request.getContextPath()%>/payment/addsave" method="POST">
  <input type="hidden" name="id" value="0"/>
    <div class="form-group">
      <label for="email">Name</label>
      <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name">
    </div>
    <div class="form-group">
      <label for="pwd">Status</label>
      <select onchange="changestatus(this.value)" class="form-control" name="account_status" >
      <option>Select Status</option>
      <option>In</option>
      <option>Out</option>
      </select>
    </div>
    <div class="form-group">
      <label for="pwd">Account Type</label>
      <select class="form-control" name="account_type" >
      <option>Select Account Type</option>
       <optgroup label="In" id="in">
      <c:forEach var="account" items="${initems}">
      <option value="${account.account_type}">${account.account_type}</option>
      </c:forEach>
      </optgroup>
       <optgroup label="Out" id="out">
       <c:forEach var="outitems" items="${outitems}">
      <option value="${outitems.account_type}">${outitems.account_type}</option>
      </c:forEach>
      </optgroup>
      </select>
    </div>
  <div class="form-group">
      <label for="pwd">Payment Type</label>
      <select class="form-control" name="payment_type">
      <option>Select Payment Type</option>
         <c:forEach var="payment" items="${payment}">
       <option value="${payment.name}">${payment.name}</option>
     
      </c:forEach>
      </select>
    </div>
     <div class="form-group">
      <label for="email">Amount</label>
      <input type="text" class="form-control" id="name" placeholder="Enter Amount" name="amount">
    </div>
    <div class="form-group">
      <label for="email">Remark</label>
      <input type="text" class="form-control" id="name" placeholder="Enter Remark" name="remark">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
</body>
<script>
function changestatus(str){
if(str=="In"){
document.getElementById("out").disabled = true;
document.getElementById("in").disabled = false;

}else{
document.getElementById("in").disabled = false;
document.getElementById("Out").disabled = false;
}
if(str=="Out"){
 console.log(str);
document.getElementById("in").disabled = true;
document.getElementById("Out").disabled = false;

}else{
document.getElementById("in").disabled = false;
document.getElementById("Out").disabled = false;
}

}
</script>
</html>