<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello JSP!</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/styles.css">
</head>

<body>
<header id="header">
    <div id="menu">
        <h3 class="masthead-brand"><a href="/">KALKULATOR KREDYTOWY</a></h3>
        <nav class="nav nav-masthead justify-content-center">
            <!---
            <a class="nav-link<%-- ("1").equals(request.getParameter(" active")) ? "active" : "" --%>" href="/">Home</a>
            --->
            <a class="nav-link${1 eq param.active ? " active" : ""}" href="/">Home</a>
        </nav>
    </div>
</header>