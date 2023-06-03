<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentHome.aspx.cs" Inherits="StudentHome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student HomePage</title>
    <style>
        /* Global styles */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        /* Styling for the flex container */
        .flex-container {
            display: flex;
            align-items: center;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        /* Styling for the middle section */
        .middle {
            width: 50%;
            text-align: center;
        }

        .middle h2 {
            color: #333;
            margin-top: 0;
            font-size: 24px;
            text-transform: uppercase;
        }

        /* Styling for the left side */
        .left-side {
            width: 50%;
            float: left;
            padding: 20px;
        }

        /* Styling for the right side */
        .right-side {
            width: 50%;
            float: left;
            padding: 20px;
        }

        /* Line separator */
        .line-separator {
            clear: both;
            margin: 20px 0;
            border-bottom: 1px solid #ccc;
        }

        /* Vertical line separator */
        .vertical-line {
            width: 1px;
            background-color: #ccc;
            height: calc(100% - 40px);
            margin-left: 10px;
            margin-right: 10px;
        }

        /* Spacing between elements in the flex container */
        .flex-container > * {
            margin-right: 20px;
        }

        /* Styling for the link items */
        .link-item {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            text-decoration: none;
            color: #333;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .link-item img {
            height: 47px;
            width: 63px;
            margin-right: 10px;
        }

        .link-item label {
            margin: 0;
            font-weight: bold;
            font-size: 16px;
        }

        /* Hover effect for link items */
        .link-item:hover {
            background-color: #f5f5f5;
        }

        /* Styling for admin information section */
        .admin-info {
            margin-top: 20px;
        }

        .admin-info label {
            font-weight: bold;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="flex-container">
        <div class="middle">
            <h2>Student Homepage</h2>
        </div>
        <div class="left-side">
            <div class="link-item">
                <a href="StudentAttendance.aspx">
                    <img src="Attendance.jpg" alt="Attendance">
                    <label for="StudentAttendance">Attendance</label>
                </a>
            </div>
            <div class="link-item">
                <a href="StudentEvaluation.aspx">
                    <img src="Evaluation.jpg" alt="Evaluation">
                    <label for="StudentEvaluation">Evaluation</label>
                </a>
            </div>
            <div class="link-item">
                <a href="Transcript.aspx">
                    <img src="Transcript.jpg" alt="Transcript">
                    <label for="Transcript">Transcript</label>
                </a>
            </div>
            <div class="link-item">
                <a href="Graphs.aspx">
                    <img src="CGPACalculator.jpg" alt="CGPACalculator">
                    <label for="CGPACalculator">Graphs</label>
                </a>
            </div>
            <div class="link-item">
                <a href="Feedback.aspx">
                    <img src="Feedback.jpg" alt="Feedback">
                    <label for="Feedback">Feedback</label>
                </a>
            </div>
        </div>
        <div class="vertical-line"></div>
        <div class="right-side">
            <h2>Student Information</h2>
            <div class="admin-info">
                <label for="Student">Name: Shameer Abdullah</label>
                <asp:Label ID="AdminName" runat="server"></asp:Label>
            </div>
            <div class="admin-info">
                <label for="StudentID">ID: i20-2470</label>
                <asp:Label ID="StudentID" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</body>
</html>

