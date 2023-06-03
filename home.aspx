<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>
<html>
<head>
    <title>Faculty Homepage</title>
    <style>
        /* Add your preferred styling here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            text-align: center;
        }

        h1 {
            color: #333333;
        }

        .button-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 50px;
        }

        .button {
            margin: 10px;
            padding: 15px 25px;
            font-size: 18px;
            text-align: center;
            background-color: #4CAF50;
            border: none;
            color: white;
            cursor: pointer;
            transition-duration: 0.4s;
            text-decoration: none;
            border-radius: 4px;
        }

        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Welcome, Amina1234</h2>
        <div class="button-container">
            <asp:Button runat="server" ID="btnCourseManagement" Text="Course Management" CssClass="button" OnClick="btnCourseManagement_Click" />
            <asp:Button runat="server" ID="btnMarksDistribution" Text="Marks Distribution" CssClass="button" OnClick="btnMarksDistribution_Click" />
            <asp:Button runat="server" ID="btnAttendanceManagement" Text="Attendance Management" CssClass="button" OnClick="btnAttendanceManagement_Click" />
            <asp:Button runat="server" ID="btnEvaluationManagement" Text="Evaluation Management" CssClass="button" OnClick="btnEvaluationManagement_Click" />
            <asp:Button runat="server" ID="btnGradeGeneration" Text="Grade Generation" CssClass="button" OnClick="btnGradeGeneration_Click" />
            <asp:Button runat="server" ID="btnReports" Text="Reports" CssClass="button" OnClick="btnReports_Click" />
        </div>
    </form>
</body>
</html>
