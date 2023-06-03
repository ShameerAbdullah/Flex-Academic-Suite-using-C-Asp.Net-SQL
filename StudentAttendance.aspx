<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentAttendance.aspx.cs" Inherits="StudentAttendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Attendance Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        
        h1 {
            color: #333333;
            text-align: center;
            margin: 20px 0;
        }
        
        table {
            border-collapse: collapse;
            width: 100%;
            background-color: #FFFFFF;
            color: #333333;
            margin-top: 20px;
        }
        
        th, td {
            text-align: left;
            padding: 12px 15px;
            border-bottom: 1px solid #dddddd;
        }
        
        th {
            background-color: #555555;
            color: #FFFFFF;
            font-weight: bold;
        }
        
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Attendance</h1>
        <table>
            <tr>
                <th>Date</th>
                <th>Presence</th>
                <th>Roll Number</th>
            </tr>
            <tr>
                <td><asp:Label ID="date1Label" runat="server"></asp:Label></td>
                <td><asp:Label ID="presence1Label" runat="server"></asp:Label></td>
                <td><asp:Label ID="rollNumber1Label" runat="server"></asp:Label></td>
            </tr>
            <!-- Add more rows as needed -->
        </table>
    </form>
</body>
</html>
