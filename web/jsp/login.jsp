
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link type="text/css" rel="stylesheet"
      href="<%=request.getContextPath()%>/css/main.css">

<link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
<html>
<head>
    <title>Логин</title>
</head>
<body>
<div class="container addProfessor">
    <h2><span style="color: red;" >${error}</span></h2>
    <h3>Введите логин и пароль</h3>
    <form action="${pageContext.request.contextPath}/AccessControlServlet" method="post">
        <input type="hidden" id="action" name="action" value="doLogin">
        <div class="form-group">
            <label for="name">Логин:</label>
            <input class="form-control"  type="text" id="name" name="name" >
        </div>
        <div class="form-group"><label for="password">Пароль:</label>
            <input class="form-control"  id="password" type="password" name="password">
        </div>
        <br/><input type="submit" class="btn btn-default" value="Ок">
    </form>
</div>
</body>
</html>
