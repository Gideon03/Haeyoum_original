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
    <title>Register</title>
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
                    <h2 class="title">Registration</h2>
                   	<form action="${pageContext.request.contextPath}/member/regist"	method="post" enctype="multipart/form-data">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">ID<span style="color:red" id="checkId"></span></label>
                                    	<input class="input--style-4" type="text" name="member_id"
                                    	id="id" name="member_id" required="required" placeholder="영문/숫자(6~10자리 가능)"
                                    	pattern="[a-zA-Z0-9]{6,10}" maxlength="10" title="한글,공백,특수문자 제외">
                                    <label class="label">Password <span style="color:red" id="pw_1"></span></label>
                                    	<input class="input--style-4" type="password" id="pw1" name="member_password" required pattern="[a-zA-Z0-9]{8,20}" maxlength="20" placeholder="영문/숫자(8글자 이상)" title="한글,공백,특수문자 제외">
                                	<label class="label">Password_check <span style="color:red" id="pw_2"></span></label>
                                    	<input class="input--style-4" type="password" id="pw2" name="check_password" required pattern="[a-zA-Z0-9]{8,20}" maxlength="20" title="한글,공백,특수문자 제외">
                             		<label class="label">Name</label>
                                    	<input class="input--style-4" type="text" name="member_name" required>
                               		<label class="label">Nick_name</label>
                                    	<input class="input--style-4" type="text" pattern="{2,8}" maxlength="8" id="nn" placeholder="닉네임(2~8자리 입력가능)" name="member_nickname" required>                        	
                                    	<span style="color:red" id="nick"></span>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                  	<label class="label">Email</label>
                                    	<input class="input--style-4" type="email" name="member_email">
                                    <label class="label">Birthday</label>
                                    	<div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" name="birthday" placeholder="달력에서 선택" readonly>
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    	</div>
                                    <label class="label">Image</label>
                                        <img id="output" width="250px" /><br>
                                    	<input type="file" accept="image/*" name="file" onchange="loadFile(event)">                                   	
                                </div>
                            </div>
                        </div>
                        
                        	<div class="p-t-15" align="center">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                        
                            <button class="btn btn--radius-2 btn--blue" type="button" 
                            onclick="history.back()">Home</button>
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
	
	$("#pw1").change(function(){
		if ($("#pw1").val().length < 8) {
			$("#pw_1").text(" [해킹위험!] 8자입력!");
		} else 
			$("#pw_1").text("");	
	})
	
	$("#id").change(function(){
		if ($("#id").val().length < 6) {
			$("#checkId").text(" [6자 이상 입력 필수!]");
		} else 
			$("#checkId").text("");	
	})
	
	$("#nn").change(function(){
		if ($("#nn").val().length < 2) {
			$("#nick").text(" [2자 이상 입력 필수!]");
		} else 
			$("#nick").text("");	
	})

	$("#pw2").change(function(){
		if($("#pw2").val() !== $("#pw1").val()){
			$("#pw_2").text("패스워드 오류!");
			$("#pw2").val("").focus();
		} else
			$("#pw_2").text("");
	})

	$("#id").change(function(){	
		if ($.trim("#id").val() !== $("#id").val()){
			alert("공백은 반칙입니다!");
		}
	})
	
	$("#id").keyup(function() {
		var member_id = $("#id").val();
		
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/member/checkId/"+ member_id,
			dataType: "json",
			success: function (result) {
				$("#checkId").text(result.value);
			}, 
			error: function () {
				$("#checkId").text("");
			}
		});
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