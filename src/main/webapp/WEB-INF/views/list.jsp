<%--
  Created by IntelliJ IDEA.
  User: dirhq
  Date: 2023-12-07
  Time: 오후 4:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <style>
        table, td, th{
            text-align: center;
        }
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
    </style>
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">
    <script>
        function delete_ok(id) {
            var a = confirm("정말로 삭제 하시겠습니까?");
            if (a) location.href = 'deleteok/' + id;
        }
    </script>
    <title>Title</title>
</head>

<body class="d-flex h-100 text-center text-white bg-dark">

<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="mb-auto">
        <div>
            <h3 class="float-md-start mb-0">모교방문단</h3>
            <nav class="nav nav-masthead justify-content-center float-md-end">
                <a class="nav-link active" aria-current="page" href="./add">Apply</a>
                <%--<a class="nav-link" href="#">Contact</a>--%>
            </nav>
        </div>
    </header>

    <main class="px-3">
        <table class="table table-dark table-striped table-hover" id="list" width="90%">
            <tr>
                <th>ID</th>
                <th>Student</th>
                <th>School</th>
                <th>Apply Date</th>
                <th></th>
                <th></th>
                <th></th>
            </tr>

            <c:forEach items="${list}" var="u">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.student}</td>
                    <td>${u.school}</td>
                    <td>${u.applyDate}</td>
                    <td><a href="view/${u.id}">More</a></td>
                    <td><a href="editform/${u.id}">Edit</a></td>
                    <td><a href="javascript:delete_ok('${u.id}')">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </main>

    <footer class="mt-auto text-white-50">
        <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</div>
</body>
</html>