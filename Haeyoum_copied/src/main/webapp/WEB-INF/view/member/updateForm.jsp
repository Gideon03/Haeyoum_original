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
    <title>회원정보 수정</title>
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
                    <h2 class="title">회원정보 수정</h2>
                   	<form action="${pageContext.request.contextPath}/member/update"	method="post" enctype="multipart/form-data">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">ID</label>
                                    	<input class="input--style-4" type="text" name="member_id"
                                    	id="id" value="${user.member_id}" readonly="readonly">
                                    <label class="label">Pre_Password</label>
                                    	<input class="input--style-4" type="password" id="pp" required pattern="[a-zA-Z0-9]{8,}" placeholder="영문/숫자(8글자 이상)" title="한글,공백,특수문자 제외">
                                	<label class="label">New_Password</label>
                                    	<input class="input--style-4" type="password" id="np" name="member_password" required pattern="[a-zA-Z0-9]{8,}" placeholder="영문/숫자(8글자 이상)" title="한글,공백,특수문자 제외">
          							<label class="label">Nick_name</label>
                                    	<input class="input--style-4" type="text" name="member_nickname" value="${user.member_nickname}">    
          							<label class="label">Email</label>
                                    	<input class="input--style-4" type="email" name="member_email" placeholder="sample@email.com">
                               		                    	
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                 <label class="label">Image</label>
                                  		<img src="${pageContext.request.contextPath}/resources/upload/${user.member_image}" id="output" width="250px" /><br>
                                    	<input type="file" accept="image/*" name="file" onchange="loadFile(event)">
                                </div>
                            </div>
                        </div>
                            <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                            <button class="btn btn--radius-2 btn--blue" type="reset">Reset</button>
                        	</div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <script type="text/javascript">
    
    	var loadFile = function(event) {
      		var output = document.getElementById('output');
      		output.src = URL.createObjectURL(event.target.files[0]);
   		 };

		$("#np").change(function() {
			if ($("#np").val() == $("#pp").val()) {
				alert("[경고!] 기존 패스워드와 똑같잖아윰~!");
				$("#np").val("").focus();
			}
		})

		$("#np").change(function() {
			if ($("#np").val().length < 8) {
				alert("[해킹위험!] 패스워드는 8자 이상으로 입력해주세윰!");
			} else
				$("#npCheck").text("");
		})

		$("#np").change(function() {
			if ($.trim("#np").val() !== $("#np").val()) {
				alert("공백은 반칙입니다!");
			}
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