<%@ Page Language="C#" AutoEventWireup="true" CodeFile="evaluation.aspx.cs" Inherits="evaluation" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Evaluation Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }

        h2 {
            color: #333333;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        select,
        input[type="text"],
        input[type="submit"] {
            padding: 8px;
            font-size: 14px;
            border-radius: 4px;
            border: 1px solid #cccccc;
        }

        select {
            width: 200px;
        }

        input[type="text"] {
            width: 150px;
        }

        input[type="submit"] {
            background-color: #337ab7;
            color: #ffffff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #23527c;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 style="text-align: center;">Evaluation</h2>
            <div style="text-align: center;">
                <label for="ddlStudents">Select Student:</label>
                <asp:DropDownList ID="ddlStudents" runat="server"></asp:DropDownList>
            </div>
            <br /><br />
            <div style="text-align: center;">
                <label for="ddlEvaluations">Select Evaluation:</label>
                <asp:DropDownList ID="ddlEvaluations" runat="server"></asp:DropDownList>
            </div>
            <br /><br />
            <div style="text-align: center;">
                <label for="txtMarks">Enter Marks:</label>
                <asp:TextBox ID="txtMarks" runat="server"></asp:TextBox>
            </div>
            <br /><br />
            <div style="text-align: center;">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <br /><br />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                <br /><br />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            </div>
        </div>
    </form>
</body>
</html>
