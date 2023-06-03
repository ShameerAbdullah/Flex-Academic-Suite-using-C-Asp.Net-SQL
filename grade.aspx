<%@ Page Language="C#" AutoEventWireup="true" CodeFile="grade.aspx.cs" Inherits="grade" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grade Page</title>
   <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #555;
        }

        .button {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #45a049;
        }

        .grade {
            margin-top: 20px;
            text-align: center;
        }

        .grade-label {
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Generate Grade</h2>
            <div>
                <label for="ddlStudents">Select Student:</label>
                <asp:DropDownList ID="ddlStudents" runat="server"></asp:DropDownList>
            </div>
            <div class="grade">
                <h3>Grade: <asp:Label ID="lblGrade" runat="server" CssClass="grade-label"></asp:Label></h3>
            </div>
            <div>
                <asp:Button ID="btnGenerateGrade" runat="server" Text="Generate Grade" OnClick="btnGenerateGrade_Click" CssClass="button" />
            </div>
        </div>
    </form>
</body>
</html>
