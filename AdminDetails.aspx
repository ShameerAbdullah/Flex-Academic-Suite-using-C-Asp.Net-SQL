<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminDetails.aspx.cs" Inherits="AdminDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reports Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }

        .heading {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 30px;
            color: #4CAF50;
        }

        .button-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            padding: 12px 20px;
            margin: 10px;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .grid-container {
            overflow-x: auto;
        }

        .grid-container table {
            border-collapse: collapse;
            width: 100%;
        }

        .grid-container th,
        .grid-container td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .grid-container th {
            background-color: #4CAF50;
            color: #fff;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="heading">Reports Page</h1>
            <div class="button-container">
                <asp:Button ID="btnOfferedCourseReport" runat="server" Text="Offered Course Report" OnClick="btnOfferedCourseReport_Click" CssClass="btn" />
                <asp:Button ID="btnStudentSectionReport" runat="server" Text="Student Section Report" OnClick="btnStudentSectionReport_Click" CssClass="btn" />
                <asp:Button ID="btnCourseAllocationReport" runat="server" Text="Course Allocation Report" OnClick="btnCourseAllocationReport_Click" CssClass="btn" />                
            </div>
            <div class="grid-container">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True"></asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>

