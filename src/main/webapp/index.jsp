<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Photo-library</title>
    <style>
        body{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container{
            text-align: center;
        }
    </style>
</head>

<body>
<div class="container">
    <form class="library" action="imageDisplay" method="post">
        <h2>Выберите категорию и нажмите кнопку, чтобы показать изображение</h2>
        <h4>Выберите категорию</h4>
        <select id="category" name="category">
            <option value="trees">Природа</option>
            <option value="cars">Автомобили</option>
            <option value="children">Дети</option>
            <option value="food">Еда</option>
        </select>
        <h4>Выберите номер изображения</h4>
        <select id="number" name="number">
            <option value="0">№1</option>
            <option value="1">№2</option>
            <option value="2">№3</option>
            <option value="3">№4</option>
            <option value="4">№5</option>
        </select>
        <br><br>
        <button>Показать изображение</button>
        <br><br>
    </form>
</div>
</body>
</html>