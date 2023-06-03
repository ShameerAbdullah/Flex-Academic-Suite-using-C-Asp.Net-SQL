<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OfferCourses.aspx.cs" Inherits="OfferCourses" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Offer Courses</title>
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
            <h2>Offered Courses</h2>
            <div class="form-row">
                <label for="ddlSemester">Select Semester:</label>
                <asp:DropDownList ID="ddlSemester" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSemester_SelectedIndexChanged"></asp:DropDownList>
            </div>
            <div class="form-row">
                <label for="txtCourseID">Course ID:</label>
                <asp:TextBox ID="txtCourseID" runat="server"></asp:TextBox>
                <label for="txtCourseName">Course Name:</label>
                <asp:TextBox ID="txtCourseName" runat="server"></asp:TextBox>
                <label for="txtSemesterNumber">Semester:</label>
                <asp:TextBox ID="txtSemesterNumber" runat="server"></asp:TextBox>
                <label for="txtCreditHour">Credit Hours:</label>
                <asp:TextBox ID="CreditHour" runat="server"></asp:TextBox>
            </div>
            <div class="button-container">
                <asp:Button ID="btnAddCourse" runat="server" Text="Add" OnClick="btnAddCourse_Click" CssClass="btn" />
            </div>
            <div class="course-list">
                <h3>Course List</h3>
                <asp:GridView ID="gvCourses" runat="server" AutoGenerateColumns="false" OnRowDataBound="gvCourses_RowDataBound" OnRowCommand="gvCourses_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="CourseID" HeaderText="Course ID" />
                        <asp:BoundField DataField="CourseName" HeaderText="Course Name" />
                        <asp:BoundField DataField="Semester" HeaderText="Semester" />
                        <asp:BoundField DataField="CreditHours" HeaderText="Credit Hours" />
                        <asp:TemplateField HeaderText="Remove">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkRemove" runat="server" CssClass="remove-button" Text="Remove" CommandName="RemoveCourse" CommandArgument='<%# Eval("CourseID") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <div class="button-container">
                <asp:Button ID="Button2" runat="server" Text="Offer Courses" OnClick="btnSaveCourse_Click" CssClass="btn" />
            </div>
        </div>
    </form>
</body>
</html>


