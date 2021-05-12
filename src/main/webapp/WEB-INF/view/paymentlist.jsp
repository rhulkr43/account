<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account</title>

</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>
<div class="container">
<div class="row">
<a href="<%=request.getContextPath()%>/payment/add" style="float:right;margin-top:4%" class="btn btn-primary">Add New Payment</a>

</div>

	<div class="row" style="margin-top: 3%;">
<div class="col-lg-12 col-sm-12 col-md-12">
 <div class="table-responsive">          
  <table class="table" id="payment">
    <thead>
      <tr>
        <th>Sr No</th>
        <th> Name</th>
        <th>Account</th>
        <th>Payment</th>
        <th>Date</th>
        <th>Edit</th>
        
      </tr>
    </thead>
    <tbody>
    <%
    int i=1;
    %>
   <c:forEach var="list" items="${list}">
    <tr>
        <td><%=i++%></td>
        <td>${list.name}</td>
        <td>${list.account_type}</td>
        <td>${list.payment_type}</td>
        <td>${list.date}</td>
      <td><a href="<%=request.getContextPath() %>/payment/edit/${list.id}" class="btn btn-primary">Edit</a></td>
      </tr>
   </c:forEach>
   
   
     
    </tbody>
  </table>
  </div>


		</div>
	
	
		</div>

</div>

</body>
<script>
$(document).ready(function() {
    $('#payment').DataTable();
} );
</script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
</html>