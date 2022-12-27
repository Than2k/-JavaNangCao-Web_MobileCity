<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet"
            href="./assets/fonts/fontawesome-free-5.15.3-web/css/all.min.css">
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap"
            rel="stylesheet">

<style type="text/css">

	body {
  background: #007bff;
  background: linear-gradient(to right, #0062E6, #33AEFF);
}

.btn-login {
  font-size: 0.9rem;
  letter-spacing: 0.05rem;
  padding: 0.75rem 1rem;
}

.btn-google {
  color: white !important;
  background-color: #ea4335;
}

.btn-facebook {
  color: white !important;
  background-color: #3b5998;
}
</style>
</head>

<body>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card border-0 shadow rounded-3 my-5">
          <div class="card-body p-4 p-sm-5">
            <h3 class="card-title text-center mb-5 fw-light fs-5">Mã xác thực </h3>
            <form action="/MobileCity/Account/verify-code">
              <div class="form-floating mb-3">
                <input type="text" name="ma" class="form-control" id="floatingInput" >
                <label for="floatingInput">Nhập mã xác thực email của bạn</label>
              </div>
               <div class="form-floating mb-3">
               <input type="text" id="giay" value="${giay }" hidden  >
               	<p style="font-size: 16px; font-style:italic; color: red"> ${err }</p>
               	<c:if test="${giay>0 }">
               		<span >Thời gian còn lại: <b id="sogiay"></b> s </span>
               	</c:if>
               	<c:if test="${giay==0 }">
               		<a id="guilai" href="/MobileCity/Account/forget-password" >Gửi lại mã</a>
               	</c:if>
              </div>
              <div class="d-grid">
                <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit">Xác nhận
                  </button>
              </div>
              
              <hr class="my-4">
             
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
<script type="text/javascript"> 

        var thoigian = document.getElementById("giay").value;
        console.log("tg:"+ thoigian);
        window.onload = function demnguoc(){       
            document.getElementById("sogiay").innerHTML = thoigian;         
            thoigian--;
            if(thoigian>=0){
                setTimeout(() => {
                demnguoc()
                }, 1000);
            }
        }
    </script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</html>