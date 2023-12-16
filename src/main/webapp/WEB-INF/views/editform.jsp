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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .form-group {
            margin-bottom: 20px; /* Adjust this value as needed */
        }

        /* Increase spacing after the heading */
        h2 {
            margin-bottom: 30px; /* Adjust this value as needed */
        }
        .form-label {
            display: block;
            text-align: left;
        }
        .dark-form-input {
            background-color: #495057; /* 어두운 회색 */
            color: #ffffff; /* 흰색 */
            border-color: #6c757d; /* 테두리 색상 */
        }
        .table-dark th,
        .table-dark td,
        .table-dark thead th,
        .table-dark tbody + tbody {
            border-color: #ced4da; /* 테이블 셀의 테두리 색상을 밝은 회색으로 변경 */
        }
    </style>
</head>
<body class="d-flex h-100 text-center text-white bg-dark">

<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="mb-auto">
        <div>
            <h3 class="float-md-start mb-0">모교방문단</h3>
            <nav class="nav nav-masthead justify-content-center float-md-end">
                <%--  <a class="nav-link active" aria-current="page" href="#">Home</a>
                                <a class="nav-link" href="#">Features</a>
                                <a class="nav-link" href="#">Contact</a>--%>
            </nav>
        </div>
    </header>

    <main class="px-3">
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <form:form modelAttribute="u" method="POST" action="../editok">
                    <form:hidden path="id"/>
                    <table id="edit" class="table table-dark table-striped table-hover table-bordered mb-5">
                        <tr><td>Student</td><td><form:input path="student" class="form-control dark-form-input" /></td></tr>
                        <tr><td>Student Number</td><td><form:input path="studentNumber" class="form-control dark-form-input" /></td></tr>
                        <tr><td>School</td><td><form:input path="school" class="form-control dark-form-input" /></td></tr>
                        <tr><td>School Number</td><td><form:input path="schoolNumber" class="form-control dark-form-input" /></td></tr>
                        <tr><td>location</td><td><form:input path="location" class="form-control dark-form-input" /></td></tr>
                        <tr><td>Subsidy</td><td><form:input path="subsidy" class="form-control dark-form-input" /></td></tr>
                    </table>
                    <input type="submit" value="Edit" class="btn btn-primary">
                    <input type="button" value="Cancel" onclick="history.back()" class="btn btn-secondary">
                </form:form>
            </div>
        </div>

    </main>

    <footer class="mt-auto text-white-50">
        <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</div>
</body>
</html>