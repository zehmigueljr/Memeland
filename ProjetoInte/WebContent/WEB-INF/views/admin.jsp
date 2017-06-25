<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width">
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="resources/SemanticUI/semantic.min.css" />
    <link rel="stylesheet" type="text/css" href="resources/styles.css" />
	<title>
        MemeLand
    </title>
</head>
<body>
<div id="login-admin" class="ui middle aligned center aligned grid"> 
    <div class="column" id="login-corpo">
        <div>
            <img class="image" alt="Logo Memeland" src="resources/medias/logotipo.png">
            <div class="ui basic segment">
                <div class="ui form" id="form-login">
                    <div class="ui field">
                        <input id="user-admin" name="user-admin" placeholder="Admin" type="text">
                        </div>
                    <div class="ui field">
                        <div class="ui input">
                        <input id="password-admin" name="password-admin" placeholder="Senha" type="password"></div>
                        <input id="GerarToken" name="GerarToken" type="hidden" value="">
                    </div>
                    <button id="bt-entrar" class="ui fluid red button">Entrar</button>
                    <div class="ui error message"></div>
                </div>
            </div>
        </div>
    </div>
</div>

	<script src="resources/jquery/jquery-3.2.1.min.js"></script>
	<script src="resources/SemanticUI/semantic.min.js"></script>
	<script src="resources/js.js"></script>
</body>
</html>