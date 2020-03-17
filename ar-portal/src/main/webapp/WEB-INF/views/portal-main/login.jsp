<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>莞工校友网登录</title>
	<style>
		.demo{
			position:fixed;
			top: 0;
			left: 0;
			width:100%;
			height:100%;
			min-width: 1000px;
			z-index:-10;
			zoom: 1;
			background-image: url(../../../assets/images/school/dgut-login.jpg);
			background-repeat: no-repeat;
			background-size: cover;
			-webkit-background-size: cover;
			-o-background-size: cover;
			background-position: center 0;
		}
	</style>
<%@ include file="/WEB-INF/views/portal-common/portal-meta.jsp"%>
</head>
<body>
	<div class="demo">
		<div class="container higher" id="container">
			<!-- navigation -->
			<div class="header">
				<ol class="breadcrumb">
					<li><i class="fa fa-home"></i>&nbsp;<a href="${pageContext.request.contextPath}/index.action">主页</a></li>
					<li class="active">登录</li>
				</ol>
			</div>

			<%@ include file="/WEB-INF/views/portal-common/portal-tag.jsp"%>
			<div class="signinpanel" style="position: relative;top:50px;left:400px;">
				<div class="col-md-3">
					<form method="post" action="${pageContext.request.contextPath}/login/validate.action" id="loginForm">
						<center><h4 class="nomargin">登&nbsp;录</h4></center>
						<input id="-sdcjsd_mdjskvnsjv-hcdsxzlregfbdcskxm" type="hidden" name="queryString" value="${queryString}"> <input type="text" id="account" name="araccount" value="${account}" class="form-control uname" placeholder="用户名"
							onkeypress="if(event.keyCode==13){loginBtn.click();return false;}" />
						<input type="password" id="password" name="arpassword" value="" class="form-control pword" placeholder="密码"
							   onkeypress="if(event.keyCode==13){loginBtn.click();return false;}" />
						<div class="row"></div>
						<a href="javascript:;"><small>忘记密码?</small></a>
						<button class="btn btn-success btn-block" type="button"
							id="loginBtn">登&nbsp;录</button>
						<input type="hidden" id="accountErr" value="${accountErr}">
						<input type="hidden" id="passwordErr" value="${passwordErr}">
					</form>
				</div>
			</div>
			<%@ include file="/WEB-INF/views/portal-common/portal-js.jsp"%>
			<script src="${pageContext.request.contextPath}/assets/script/portal-main/login.js"></script>

		</div>
	</div>
</body>

</html>