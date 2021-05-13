<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>
<div class="container">

 <div class="row" style="margin-top:3%">
 <div class="col-lg-12 col-sm-12 col-md-12">
 <div class="table-responsive">          
  <table class="table" id="payment">
    <thead>
      <tr>
        <th>Sr No</th>
         <th>Status</th>
         <th> Name</th>
        <th>Account</th>
        <th>Payment</th>
        <th>Amount</th>
        <th>Remark</th>
        <th>Date</th>
        
        
      </tr>
    </thead>
    <tbody>
    <%
    int i=1;
    %>
   <c:forEach var="list" items="${list}">
    <tr>
        <td><%=i++%></td>
        <td>${list.account_status}</td>
        <td>${list.name}</td>
        <td>${list.account_type}</td>
        <td>${list.payment_type}</td>
          <td>Rs ${list.amount}</td>
           <td>${list.remark}</td>
        <td>${list.date}</td>
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

<style>
.card {
    background-color: #fff;
    border-radius: 10px;
    border: none;
    position: relative;
    margin-bottom: 30px;
    box-shadow: 0 0.46875rem 2.1875rem rgba(90,97,105,0.1), 0 0.9375rem 1.40625rem rgba(90,97,105,0.1), 0 0.25rem 0.53125rem rgba(90,97,105,0.12), 0 0.125rem 0.1875rem rgba(90,97,105,0.1);
}
.l-bg-cherry {
    background: linear-gradient(to right, #493240, #f09) !important;
    color: #fff;
}

.l-bg-blue-dark {
    background: linear-gradient(to right, #373b44, #4286f4) !important;
    color: #fff;
}

.l-bg-green-dark {
    background: linear-gradient(to right, #0a504a, #38ef7d) !important;
    color: #fff;
}

.l-bg-orange-dark {
    background: linear-gradient(to right, #a86008, #ffba56) !important;
    color: #fff;
}

.card .card-statistic-3 .card-icon-large .fas, .card .card-statistic-3 .card-icon-large .far, .card .card-statistic-3 .card-icon-large .fab, .card .card-statistic-3 .card-icon-large .fal {
    font-size: 110px;
}

.card .card-statistic-3 .card-icon {
    text-align: center;
    line-height: 50px;
    margin-left: 15px;
    color: #000;
    position: absolute;
    right: -5px;
    top: 20px;
    opacity: 0.1;
}

.l-bg-cyan {
    background: linear-gradient(135deg, #289cf5, #84c0ec) !important;
    color: #fff;
}

.l-bg-green {
    background: linear-gradient(135deg, #23bdb8 0%, #43e794 100%) !important;
    color: #fff;
}

.l-bg-orange {
    background: linear-gradient(to right, #f9900e, #ffba56) !important;
    color: #fff;
}

.l-bg-cyan {
    background: linear-gradient(135deg, #289cf5, #84c0ec) !important;
    color: #fff;
}
</style>
</html>