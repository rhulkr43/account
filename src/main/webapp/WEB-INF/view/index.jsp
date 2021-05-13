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
	<div class="row" style="margin-top: 3%;">
<div class="col-md-12 ">
<div class="alert alert-success">
  <strong>Amount Summary</strong> 
</div>
    <div class="row ">
        <div class="col-xl-4 col-lg-6">
        <a href="<%=request.getContextPath()%>/view/In">
      
            <div class="card l-bg-green-dark">
                <div class="card-statistic-3 p-4">
                    <div class="card-icon card-icon-large"><i class="fas fa-shopping-cart"></i></div>
                    <div class="mb-4">
                        <h5 class="card-title mb-0">Total In</h5>
                    </div>
                    <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                ${inamount}
                            </h2>
                        </div>
                       
                    </div>
                   
                </div>
            </div>
              </a>
        </div>
          <div class="col-xl-4 col-lg-6">
           <a href="<%=request.getContextPath()%>/view/Out">
      
            <div class="card l-bg-cherry">
                <div class="card-statistic-3 p-4">
                    <div class="card-icon card-icon-large"><i class="fas fa-shopping-cart"></i></div>
                    <div class="mb-4">
                        <h5 class="card-title mb-0">Total Out</h5>
                    </div>
                    <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                ${outamount}
                            </h2>
                        </div>
                       
                    </div>
                   
                </div>
            </div>
            </a>
        </div>
        
         <div class="col-xl-4 col-lg-6">
            <div class="card l-bg-blue-dark">
                <div class="card-statistic-3 p-4">
                    <div class="card-icon card-icon-large"><i class="fas fa-shopping-cart"></i></div>
                    <div class="mb-4">
                        <h5 class="card-title mb-0">Total Remaning</h5>
                    </div>
                    <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                ${inamount-outamount}
                            </h2>
                        </div>
                      
                    </div>
                   
                </div>
            </div>
        </div>
  
    </div>
</div>
 
<div class="col-md-12 ">
<div class="alert alert-success">
  <strong>Payment Type Summary</strong> 
</div>
    <div class="row">
    <c:forEach items="${payment}" var="account" varStatus="loop">
          <div class="col-xl-3 col-lg-6">
            <div class="${loop.index % 2 == 0 ? 'card l-bg-cherry' : 'card l-bg-green-dark'}">
                <div class="card-statistic-3 p-4">
                    <div class="card-icon card-icon-large" style="width: 92px;"><i class="fas fa-dollar-sign"></i></div>
                    <div class="mb-4">
                        <h5 class="card-title mb-0">${account.getName()}</h5>
                    </div>
                    <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                            <h2 class="d-flex align-items-center mb-0">
                                ${account.getAmount() }
                            </h2>
                        </div>
                       
                    </div>
                    
                </div>
            </div>
        </div>
  
    </c:forEach>
      </div>
</div>
 		 
		</div>
		</div>
	
	
		</div>

</div>

</body>
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