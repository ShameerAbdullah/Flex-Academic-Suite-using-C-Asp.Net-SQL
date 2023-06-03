<%@ Page Language="C#" AutoEventWireup="true" CodeFile="marks.aspx.cs" Inherits="MarksPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>Set Marks Distribution</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        
        h1 {
            margin-top: 0;
        }
        
        label {
            font-weight: bold;
        }
        
        .evaluation-table {
            width: 100%;
            border-collapse: collapse;
        }
        
        .evaluation-table th,
        .evaluation-table td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        .evaluation-table th {
            background-color: #f7f7f7;
        }
        
        .evaluation-table td:nth-child(2) {
            width: 100px;
        }
        
        .btn-container {
            text-align: center;
            margin-top: 20px;
        }
        
        .btn-container .btn {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        
        .btn-container .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Set Marks Distribution</h1>
            <h2>Course Name: <%# CourseName %></h2>
            <div>
                <label for="ddlEvaluationType">Evaluation Type:</label>
                <asp:DropDownList ID="ddlEvaluationType" runat="server">
                    <asp:ListItem Text="Assignments" Value="Assignments"></asp:ListItem>
                    <asp:ListItem Text="Projects" Value="Projects"></asp:ListItem>
                    <asp:ListItem Text="Mids" Value="Mids"></asp:ListItem>
                    <asp:ListItem Text="Finals" Value="Finals"></asp:ListItem>
                    <asp:ListItem Text="Presentation" Value="Presentation"></asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnAddToList" runat="server" Text="Add to List" OnClick="btnAddToList_Click" />
            </div>
            <br />
            <div>
                <table class="evaluation-table">
                    <tr>
                        <th>Evaluation Name</th>
                        <th>Weightage</th>
                        <th>Range</th>
                    </tr>
                   
                    <asp:Repeater ID="rptEvaluations" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><asp:Literal ID="Literal1" runat="server" Text='<%# Container.DataItem %>'></asp:Literal></td>
                                <td><asp:TextBox ID="txtWeightage" runat="server"></asp:TextBox></td>
                                <td>0 - 100</td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
            <br />
            <div class="btn-container">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" CssClass="btn" />
            </div>
        </div>
    </form>
</body>
</html>

