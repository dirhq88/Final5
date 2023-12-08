<%--
  Created by IntelliJ IDEA.
  User: dirhq
  Date: 2023-12-07
  Time: 오후 4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<form:form modelAttribute="u" method="POST" action="../editok">
    <form:hidden path="id"/>
    <table id="edit">
        <tr><td>Student</td><td><form:input path="student" /></td></tr>
        <tr><td>Student Number</td><td><form:input path="studentNumber" /></td></tr>
        <tr><td>School</td><td><form:input path="school" /></td></tr>
        <tr><td>School Number</td><td><form:input path="schoolNumber" /></td></tr>
        <tr><td>location</td><td><form:input path="location" /></td></tr>
        <tr><td>Subsidy</td><td><form:input path="subsidy" /></td></tr>
    </table>
    <input type="submit" value="수정">
    <input type="button" value="취소" onclick="history.back()">
</form:form>
</body>
</html>