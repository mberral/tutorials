<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Crear Factura</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            box-sizing: border-box;
            text-align: center;
        }
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-top: 10px;
            color: #555;
            text-align: left;
        }
        input[type="text"],
        input[type="number"],
        input[type="date"],
        input[type="submit"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Crear Factura</h1>
        <form:form modelAttribute="invoice" action="/spring-mvc-basics/invoiceSummary" method="post">
            <form:errors path="*" cssClass="error"/>

            <label for="description">Concepto:</label>
            <form:input path="description" id="description" required="true"/>
            <form:errors path="description" cssClass="error"/>
            <br>

            <label for="quantity">Cantidad:</label>
            <form:input type="number" path="quantity" id="quantity" required="true"/>
            <form:errors path="quantity" cssClass="error"/>
            <br>

            <label for="grossAmount">Precio:</label>
            <form:input type="number" step=".01" path="grossAmount" id="grossAmount" required="true"/>
            <form:errors path="grossAmount" cssClass="error"/>
            <br>

            <label for="holding">Porcentaje de Retención:</label>
            <form:input type="number" step=".01" path="holding" id="holding" required="true"/>
            <form:errors path="holding" cssClass="error"/>
            <br>

            <label for="invoiceDate">Fecha de la Factura:</label>
            <form:input path="invoiceDate" id="invoiceDate" type="date" required="true"/>
            <form:errors path="invoiceDate" cssClass="error"/>
            <br>

            <input type="submit" value="Enviar">
        </form:form>
    </div>
</body>
</html>
