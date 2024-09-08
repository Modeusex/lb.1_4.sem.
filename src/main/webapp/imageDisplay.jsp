<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ваше изображение</title>
    <style>
        body{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container{
            text-align: center;
        }
        img {
            max-width: 700px;
            max-height: 600px;
        }
    </style>
</head>
<body>
<div>
    <h2>Отображенное изображение</h2>
    <img src="<%= request.getAttribute("imageSrc") %>" alt="Displayed Image">
</div>
</body>
</html>