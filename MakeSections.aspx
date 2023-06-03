<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MakeSections.aspx.cs" Inherits="MakeSections" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Make Sections</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #333;
            margin-top: 0;
        }

        label {
            font-weight: bold;
        }

        .form-row {
            display: flex;
            flex-wrap: wrap;
            margin-bottom: 10px;
        }
        
        .end-row {
            padding-left:450px;
            display: flex;
            flex-wrap:wrap;
            margin-bottom: 5px;
        }

        .form-row label,
        .form-row input {
            margin-right: 10px;
            margin-bottom: 10px;
        }

        .course-list {
            margin-top: 20px;
        }

        .course-list h3 {
            margin: 10px 0;
        }

        .course-list table {
            width: 100%;
            border-collapse: collapse;
        }

        .course-list th,
        .course-list td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }

        .course-list th {
            background-color: #f2f2f2;
        }

        .remove-button {
            cursor: pointer;
            color: #007bff;
            text-decoration: underline;
        }

        .button-container {
            margin-top: 10px;
        }
        .button-container .btn {
            padding: 8px 12px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .button-container .btn:hover {
            background-color: #0056b3;
        }
    </style>    
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Make Sections</h2>
            <div class="form-row">
                <label for="ddlSemester">Select Semester:</label>
                <asp:DropDownList ID="ddlSemester" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSemester_SelectedIndexChanged"></asp:DropDownList>                
            </div>            
            <div class="end-row">
                <asp:Button ID="Button1" runat="server" Text="Return to Home Page" OnClick="btnReturnHome_Click" />
            </div>            
            <div class="course-list">                
                <asp:GridView ID="gvCourses" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="StudentID" HeaderText="Student ID" />
                        <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                        <asp:BoundField DataField="Semester" HeaderText="Semester" />
                        <asp:BoundField DataField="Section" HeaderText="Section" />
                    </Columns>
                </asp:GridView>
            </div>
            <div class="button-container">
                <asp:Button ID="btnAssignSections" runat="server" Text="Assign Sections" OnClick="btnAssignSections_Click" />
            </div>
        </div>
    </form>
</body>
</html>


