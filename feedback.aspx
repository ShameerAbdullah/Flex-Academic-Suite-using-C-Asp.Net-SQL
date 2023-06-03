<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher's Assessment Form</title>
    <style>
		body {
        display: flex;
        justify-content: center;
        align-items: flex-start;
        height: 100vh;
        background-color: #f2f2f;
    }
    
    /* Existing styles... */
    
    .container {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 20px;
        background-color: lightskyblue;
    }
		.left {
			display: flex;
			align-items: center;
			margin-right: 20px;
			padding-right: 20px;
			border-right: 1px solid gray;
		}
		.logo {
            height: 125px;
            width: 465px;
            margin-left: 39px;
        }
		.taglines {
			font-size: 14px;
			font-style: italic;
			color: gray;
		}
		.right {
			display: flex;
			flex-direction: column;
			align-items: center;
		}
		.heading {
			font-size: 24px;
			font-weight: bold;
			margin-bottom: 20px;
		}
		
		.input-field {
  display: flex;
  flex-direction: column;
  margin-bottom: 10px;
  height: 43px;
}

.input-field label {
  font-size: 14px;
  font-weight: bold;
  margin-bottom: 5px;
}

.input-field div {
  display: flex;
}

.input-field input,
.input-field a {
  padding: 5px;
  border: none;
  border-radius: 5px;
  background-color: #f8f8f8;
  margin-top: 5px;
  flex-grow: 1;
}
		
		.submit-btn {
			padding: 10px 20px;
			border: none;
			border-radius: 5px;
			background-color: #0000FF;
			color: white;
			font-size: 16px;
			cursor: pointer;
			margin-bottom: 10px;
		}
		.submit-btn:hover {
			background-color: #3e8e41;
			transition: 0.3s;
		}
		.forgot-password {
			font-size: 14px;
			color: blue;
			text-decoration: underline;
			cursor: pointer;
			

		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
		<div class="centre">
			<!--<img class="logo" src="flex.jpg" alt="flex logo">-->
			<!--<div>
				<h1>&nbsp;&nbsp;FLEX STUDENT</h1>
				<p class="taglines">&nbsp;</p>
				<p class="taglines">&nbsp;</p>
			</div>
		</div>-->
		<div class="centre">
  <div class="heading">Teacher's Assessment Form</div>
  <div class="input-field">
    <label for="fullName">Teacher's Full Name</label>
    <div>
      <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox> 
    </div>
  </div>
			 <br >
  <div class="input-field">
    <label for="date">Date</label>
    <div>
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </div>
	  </div>
			 <br >
	   <div class="input-field">
    <label for="subject">Subject</label>
    <div>
      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </div>
		    </div>
			 <br >
		     <div class="input-field">
    <label for="schedule">Schedule</label>
    <div>
      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </div>
				  </div>
			 <br >
				   <div class="input-field">
    <label for="room">Room Number</label>
    <div>
      <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </div>
					    </div>
			 <br >
	<div class="input-field">
    <label for="year">School Year</label>
    <div>
      <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </div>
  </div>
			<br>
	<p>Please fill out the form in evaluating your instructor for the semester. After completion, please press the submit button.</p>
			<br>
			<p>For reference, the metric are as follows:</p>
			<br />
			<p>1  - Poor</p>
			<p>2  - Below Average</p>
			<p>3  - Average</p>
			<p>4  - Good</p>
			<p>5  - Excellent</p>
			<br />

			 <div class="input-field">
                    <label for="rating1">Teacher is well articulated and shows full knowledge of the subject in teaching</label>
                    <div>
                        <asp:DropDownList ID="rating1" runat="server">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <br>

                <div class="input-field">
                    <label for="rating2">Teacher encourages students to engage in class discussions and ask questions</label>
                    <div>
                        <asp:DropDownList ID="rating2" runat="server">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <br>

			 <div class="input-field">
                    <label for="rating3">Teacher shows well rounded knowledge over the subject matter</label>
                    <div>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <br>


             <div class="input-field">
                    <label for="rating4">Teacher finds the students strengths as basis for growth and weaknesses for opportunities for improvement</label>
                    <div>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <br>


             <div class="input-field">
                    <label for="rating5">Teacher attends class in a well presentable manner</label>
                    <div>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <br>

             <div class="input-field">
                <label for="comments">Comments</label>
                <div>
                    <asp:TextBox ID="comments" runat="server" TextMode="MultiLine" Rows="4"></asp:TextBox>
                </div>
            </div>

            <br>
            <br>
            <br>


  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
</div>
	</div>
			 <br >
            <br>
            <br>
    </form>
</body>
</html>
