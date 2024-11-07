<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Resumen de Factura</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            width: 600px;
            box-sizing: border-box;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            border-bottom: 2px solid #e0e0e0;
            padding-bottom: 10px;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        .invoice-details {
            text-align: left;
            line-height: 1.8;
        }
        .invoice-details table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .invoice-details th, .invoice-details td {
            border: 1px solid #e0e0e0;
            padding: 8px;
            text-align: left;
        }
        .invoice-details th {
            background-color: #f8f8f8;
        }
        .total {
            text-align: right;
            margin-top: 20px;
        }
        .total span {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Resumen de Factura</h1>
        <div class="invoice-details">
            <p><span>Fecha de la Factura:</span> ${invoiceDate}</p>
            <table>
                <tr>
                    <th>Descripción</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Subtotal</th>
                    <th>Retención (${holding}%)</th>
                </tr>
                <tr>
                    <td>${description}</td>
                    <td>${quantity}</td>
                    <td>${grossAmount} €</td>
                    <td>${subTotal} €</td>
                    <td>${holdingAmount} €</td>
                </tr>
            </table>
            <div class="total">
                <p><span>TOTAL:</span> ${total} €</p>
            </div>
        </div>
    </div>
</body>
</html>
