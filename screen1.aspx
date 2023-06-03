<%@ Page Language="C#" AutoEventWireup="true" CodeFile="screen1.aspx.cs" Inherits="screen1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Flex Academic Suite</title>
    <style>
        .container {
            display: flex;
            align-items: center;
            padding: 20px;
            background-color: #f2f2f2;
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
            padding-right:20px:
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
            background-color: #4CAF50;
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
            color:blue;
            text-decoration: underline;
            cursor: pointer;
        }
        .text {
            padding-bottom:10px;
            padding-top:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="left">
                <img class="logo" src="logo.png" alt="flex logo" />
                <div>
                    <h1>Flex Academic Suite</h1>
                    <p class="taglines">connect your work sources</p>
                    <p class="taglines">Secure, Trusted, Authentic</p>
                </div>
            </div>
            <div class="right">
                <div class="heading">Welcome to Flex</div>
                <div class="input-field">
                    <label for="username">Login with username</label>
                    <div>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="input-field">
                    <label for="password">Password</label>
                    <div>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </div>
               
                                    </div>
                <div class="text">
                    <a>Forgot password?</a>
                </div>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="submit-btn" />
            </div>
        </div>
    </form>
</body>
</html>
