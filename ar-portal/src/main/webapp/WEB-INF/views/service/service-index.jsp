<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/ar-taglib" prefix="ar"%>
<!DOCTYPE html>
<html>
<head>
<title>校园服务</title>
<%@ include file="/WEB-INF/views/portal-common/portal-meta.jsp"%>
</head>
<body>
	<!-- 页头 -->
	<%@ include file="/WEB-INF/views/portal-common/header.jsp"%>

	<!-- 导航栏 -->
	<%@ include file="/WEB-INF/views/portal-common/navmenu.jsp"%>

	<!-- contact -->
	<div class="container higher">
		<div class="col-md-9 project1">
			<!-- 导航栏 -->
			<ol class="breadcrumb">
				<li><i class="fa fa-home"></i>&nbsp;<a href="${pageContext.request.contextPath}/index.action">主页</a></li>
				<li class="active">校园服务</li>
			</ol>

			<img src="assets/images/school/dgut-4.jpg" class="img-responsive center-block"/>
			<p style="font-size: 16px">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				东莞理工学院  ,位于中国广东东莞。<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				东莞理工学院是广东东莞市的第一所普通本科院校，省市共建，以市为主，由诺贝尔物理学奖获得者杨振宁博士任名誉校长。
				入选教育部首批“卓越工程师教育培养计划”、“新工科研究与实践项目”，首批”广东省高水平理工科大学建设单位“、
				国家大学科技园培育单位、“中拉清洁能源与气候变化联合实验室”共建成员、广东省国际科技合作基地、伊拉斯谟世界项目、
				广东省博士后创新实践基地、省教育厅“特色高校提升计划”、广东省大学生创新创业教育示范学校、全省唯一一所新型高水平理工科大学示范校，CDIO工程教育联盟成员单位。<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				学校于1990年筹办，1992年4月经原国家教委批准成立，2002年3月经教育部批准变更为本科全日制普通高等院校，2006年5月获批为学士学位授予单位，
				2008年5月提前参加教育部本科教学工作水平评估并以良好成绩通过，2010年6月被批准为61所教育部第一批“卓越工程师教育培养计划”实施高校之一，
				2015年9月被确定为广东省重点支持的高水平理工科大学建设单位，2018年5月被确定为新增硕士学位授予单位。2018年10月成立国际联合研究生院。从2019年起，独立招收硕士研究生。<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				截至2019年6月，学校有松山湖、莞城两个校区，共占地2340亩；设有18个学院，52个本科专业；
				有1个一级学科硕士点，1个专业学位硕士点；有教职工1600人，其中正高职称人员170人、副高职称人员350多人，
				博士700多人；有普通全日制学生20252人；图书馆累计藏书200万册；有6个广东省重点学科。</p>
		</div>
		<%@include file="/WEB-INF/views/service/service-list.jsp"%>
		<div class="clearfix"></div>
	</div>
	<!-- //contact -->

	<!-- 页脚 -->
	<%@ include file="/WEB-INF/views/portal-common/footer.jsp"%>
</body>
<%@ include file="/WEB-INF/views/portal-common/portal-js.jsp"%>
<script src="${pageContext.request.contextPath}/assets/script/message/contact-us.js"></script>
</html>