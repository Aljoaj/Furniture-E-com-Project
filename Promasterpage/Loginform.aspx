<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginform.aspx.cs" Inherits="Promasterpage.Loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #f0f0f0;
            padding: 10px 20px;
        }
        .navbar .left {
            font-size: 20px;
        }
        .navbar .left .world {
            font-weight: bold;
        }
        .navbar .right {
            display: flex;
            align-items: center;
        }
        .navbar .right .icon {
            margin-left: 20px;
            position: relative;
        }
        .navbar .right .icon .notification {
            position: absolute;
            top: -5px;
            right: -10px;
            background-color: orange;
            color: white;
            border-radius: 50%;
            padding: 2px 5px;
            font-size: 12px;
        }
        .navbar .right .menu {
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            height: 18px;
        }
        .navbar .right .menu div {
            width: 25px;
            height: 3px;
            background-color: black;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 304px;
        }
        .auto-style5 {
            width: 304px;
            height: 32px;
        }
        .auto-style6 {
            height: 32px;
        }
        .auto-style8 {
            width: 304px;
            height: 33px;
        }
        .auto-style9 {
            height: 33px;
        }
        .auto-style13 {
            width: 597px;
        }
        .auto-style14 {
            width: 386px;
        }
        .auto-style15 {
            width: 312px;
        }
        .auto-style16 {
            height: 33px;
            width: 312px;
        }
        .auto-style17 {
            height: 32px;
            width: 312px;
        }
        .auto-style18 {
            width: 357px;
        }
        .auto-style19 {
            width: 357px;
            height: 33px;
        }
        .auto-style20 {
            width: 357px;
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar">
        <div class="left">
            <a href="Home.aspx"><img src="images/logo.jpg" alt="#"></a>
        </div>
    </div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">
                        <br />
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text="LOGIN FORM"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">Username</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Your Username"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">Password</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Your Password"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style16">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
                    </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20"></td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style15">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style18">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="69px" ImageUrl="~/Photo/Screenshot 2024-10-02 222505.png" Width="1471px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
