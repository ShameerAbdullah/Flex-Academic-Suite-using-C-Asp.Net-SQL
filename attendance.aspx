<%@ Page Language="C#" AutoEventWireup="true" CodeFile="attendance.aspx.cs" Inherits="attendance" %>

<!DOCTYPE html>
<html>
<head>
    <title>Manage Attendance</title>
    <style>
        /* Add your custom CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
        }

        h1 {
            color: #333;
            text-align: center;
            padding-top: 40px;
        }

        label {
            font-weight: bold;
            color: #333;
        }

        .form-container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .form-container .form-group {
            margin-bottom: 20px;
        }

        .form-container .form-group label {
            display: block;
            margin-bottom: 5px;
        }

        .form-container .form-group input[type="text"],
        .form-container .form-group select {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container .form-group select {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            background: url("dropdown-arrow.png") no-repeat right center;
            background-size: 20px 20px;
            padding-right: 30px;
        }

        .form-container .form-group .gridview-container {
            max-height: 700px;
            overflow-y: auto;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container .form-group .gridview-container table {
            width: 100%;
            border-collapse: collapse;
        }

        .form-container .form-group .gridview-container th,
        .form-container .form-group .gridview-container td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        .form-container .form-group .gridview-container th {
            background-color: #f9f9f9;
        }

        .form-container .form-group .gridview-container tbody tr:hover {
            background-color: #f5f5f5;
        }

        .form-container .form-group .gridview-container tbody tr:last-child {
            border-bottom: none;
        }

        .form-container .form-group .save-button {
            text-align: center;
            margin-top: 20px;
        }

        .form-container .form-group .save-button button {
            padding: 8px 16px;
            font-size: 14px;
            border: none;
            border-radius: 4px;
            background-color: #4CAF50;
            color: #fff;
            cursor: pointer;
        }

        .form-container .form-group .save-button button:hover {
            background-color: #45a049;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h1>Manage Attendance</h1>
            <div class="form-group">
                <label for="txtDate">Date:</label>
                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <div class="gridview-container">
                    <asp:GridView ID="gvStudents" runat="server" AutoGenerateColumns="false" CssClass="table">
                        <Columns>
                            <asp:BoundField DataField="RollNo" HeaderText="Roll No" />
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:TemplateField HeaderText="Attendance">
                                <ItemTemplate>
                                    <asp:DropDownList ID="ddlAttendance" runat="server" CssClass="form-control">
                                        <asp:ListItem Text="Present" Value="Present"></asp:ListItem>
                                        <asp:ListItem Text="Absent" Value="Absent"></asp:ListItem>
                                        <asp:ListItem Text="Leave" Value="Leave"></asp:ListItem>
                                    </asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="form-group save-button">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="btn btn-primary" />
            </div>
        </div>
    </form>
</body>

