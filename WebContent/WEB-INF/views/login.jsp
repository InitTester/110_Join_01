<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
	<head>
	  <meta charset="UTF-8">	  
	  <title>CodePen - Flat HTML5/CSS3 Login Form</title>    
	  
  		<!-- jstl , c:url value를 이용해서 루트로부터 절대경로를 지정해준다.-->
    	<link rel="stylesheet" href= "<c:url value='/resources/css/style.css'/>">	
    	
	</head>

	<body>
	
	<!-- partial:index.partial.html -->
	<div class="login-page">
	  <div class="form">
		   <form class="register-form" action ="<c:url value='/join.do'/>" >		   
		      <input type="text" placeholder="id" name="memberId"/>
		      <input type="password" placeholder="password" name="passwd"/>
		      <input type="text" placeholder="email address" name ="email"/>
		      <button id="create">create</button>
		      
		      <p class="message">Already registered? 
		      	<a href="#" >Sign In</a>
		      </p>
		    </form>	   
		    
		    <form class="login-form">		    
		      <input type="text" placeholder="username"/>
		      <input type="password" placeholder="password"/>
		      <button id="login">login</button>
		      
		      <p class="message">Not registered? 
		      	<a href="#" >Create an account</a>
		      </p>
		    </form>		    	    
	  </div>
	</div>
	<!-- partial -->
	<!-- script.js 에서 jquery 사용을 위해 선언 -->
	<script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script src="<c:url value='/resources/js/script.js'/>"></script>
	<script>
		/*     window.onload : 웹 페이지가 완전 로드되었을때 구동, 페이지의 요소를 접근하거나 초기화 할때 많이 사용된다.
	    전송된 데이터를 msg, result 값으로 받아서 result(db 처리 성공,실패)에 값이 있는경우 해당 경우에 맞는 msg 값을 받아서
	    화면에 보여주고, 새로고침을 하게되면 계속 회원가입이 되기 때문에 리다이렉트로 페이지 이   
		*/    
		window.onload=function(){
			var msg = '${msg}';
			var result = '${result}';
			
			if(result != ''){
				alert(msg);
				window.location.href = "<c:url value='/loginPage.do'/>"
			}
		}
	</script>
	
	</body>
</html>