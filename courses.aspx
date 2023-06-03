<%@ Page Language="C#" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="CoursesPage" %>

<!DOCTYPE html>
<html>
<head>
    <title>Course Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }

        h1 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }

        label {
            font-weight: bold;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }

        div.form-group {
            margin-bottom: 20px;
        }

        div.form-group label {
            display: block;
            margin-bottom: 5px;
        }

        div.form-group select,
        div.form-group input[type="text"] {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        div.form-group input[type="text"] {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
        }

        div.course-list {
            margin-top: 20px;
        }

        ul.course-list li {
            margin-bottom: 10px;
        }

        ul.course-list li a {
            color: #333;
            text-decoration: none;
        }

        ul.course-list li a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Course Management</h1>
            <div>
                <label for="ddlCampus">Campus:</label>
                <asp:DropDownList ID="ddlCampus" runat="server">
                    <asp:ListItem Text="Islamabad" Value="Islamabad"></asp:ListItem>
                    <asp:ListItem Text="Karachi" Value="Karachi"></asp:ListItem>
                    <asp:ListItem Text="Lahore" Value="Lahore"></asp:ListItem>
                    <asp:ListItem Text="Peshawar" Value="Peshawar"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <div>
                <label for="ddlSemester">Semester:</label>
                <asp:DropDownList ID="ddlSemester" runat="server">
                    <asp:ListItem Text="Spring 2023" Value="Spring 2023"></asp:ListItem>
                    <asp:ListItem Text="Fall 2023" Value="Fall 2023"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <div>
                <label for="txtSearch">Search Course:</label>
                <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            </div>
            <br />
            <div>
                <h2>Courses</h2>
                <ul>
                    <asp:Repeater ID="rptCourses" runat="server" OnItemCommand="rptCourses_ItemCommand">
                        <ItemTemplate>
                            <li>
                                <a href="#"><%# Eval("CourseName") %></a> - <%# Eval("TeacherName") %>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </div>
    </form>
</body>
</html>