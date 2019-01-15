<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>마이페이지</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>

    <!-- Icons font CSS-->
    <link href="${pageContext.request.contextPath}/resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/resources/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="${pageContext.request.contextPath}/resources/regist/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title" align="center">★ Haeyoum 회원 <b style="color:purple;">${user.member_id}</b> 님의 마이페이지 ★</h2>
                   	
                        <div class="row row-space">
                        	<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Image</label>
                                    <c:if test="${not empty user and user.login}">
										<img src="${pageContext.request.contextPath}/resources/upload/${user.member_image}" 
										id="img" width="250px"><br>
									</c:if>               	
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">ID</label>
                                    	<input class="input--style-4" type="text" value="${user.member_id}" name="member_id" readonly="readonly" style="text-align: right" >
                                   <label class="label">Name</label>
                                    	<input class="input--style-4" type="text" value="${user.member_name}" name="member_name" readonly="readonly" style="text-align: right">
                               		<label class="label">Nick_name</label>
                                    	<input class="input--style-4" type="text" value="${user.member_nickname}" name="member_nickname" readonly="readonly" style="text-align: right">                        	
                                </div>
                            </div>
                        </div>
                            <div class="p-t-15" align="center">
                            <button class="btn btn--radius-2 btn--blue" type="button"
                            onclick="location.href='${pageContext.request.contextPath}/member/update'">회원정보수정</button>
                            <button class="btn btn--radius-2 btn--blue" type="button" 
                            onclick="location.href='${pageContext.request.contextPath}/'">홈으로</button>
                        	</div>
                   
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
    function readURL(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	            $('#img').attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	$(document).ready(function(){
	    readURL(this);
	});
	</script>

    <!-- Jquery JS-->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/datepicker/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="${pageContext.request.contextPath}/resources/regist/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->