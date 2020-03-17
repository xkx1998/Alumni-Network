<%--
  Created by IntelliJ IDEA.
  User: black
  Date: 2017/4/7
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="col-md-3 about-list" style="padding-left: 40px;padding-top: 20px;font-size: 15px">
    <h4>校园服务</h4>
    <ul>
        <hr>
        <li><a href="http://www.dgut.edu.cn/" target="_blank">学校官网</a></li><hr>
        <c:forEach items="${services}" var="service">
            <li><a href="${pageContext.request.contextPath}/service/school.action?id=${service.infoId}">${service.infoTitle}</a></li><hr>
        </c:forEach>
        <li><a href="http://jwc.dgut.edu.cn/" target="_blank">教务处</a></li><hr>
        <li><a href="http://www.lib.dgut.edu.cn/libweb/" target="_blank">图书馆</a></li><hr>
        <li><a href="http://dgutonline.dgut.edu.cn/" target="_blank">莞工热线</a></li><hr>
        <li><a href="https://css.dgut.edu.cn/" target="_blank">莞工网络空间安全学院</a></li>
    </ul>
    <br>
    <h4>招生就业</h4>
    <ul>
        <hr>
        <li><a href="http://zsb.dgut.edu.cn/" target="_blank" target="_blank">招生信息网</a></li><hr>
        <li><a href="http://job.dgut.edu.cn/" target="_blank">就业信息网</a></li><hr>
        <li><a href="http://rs.dgut.edu.cn/rczp.htm" target="_blank">人才招聘</a></li><hr>
    </ul>
</div>




