<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminregtab.aspx.cs" Inherits="Promasterpage.Adminregtab" %>

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
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 303px;
        }
        .auto-style8 {
            width: 303px;
            height: 26px;
        }
        .auto-style9 {
            width: 388px;
        }
        .auto-style10 {
            width: 388px;
            height: 26px;
        }
        .auto-style13 {
            width: 542px;
        }
        .auto-style14 {
            width: 349px;
        }
        .auto-style15 {
            width: 296px;
        }
        .auto-style16 {
            width: 296px;
            height: 26px;
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
        <div class="right">
            <div class="icon">
                <a href="#"><img src="Photo/user-icon.png.png" alt="User" width="35"></a>
            </div>
            <div class="icon">
                <a href="#"><img src="Photo/basket-icon.png.png" alt="User" width="35"></a>
            </div>
        </div>
    </div>
        </div>
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style14">
                        <br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Text="ADMIN REGISTRATION FORM"></asp:Label>
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">Admin Name</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Your Name"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">Address</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Your Address"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style8">Email</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">Phone</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Phone Number" ValidationExpression="^[6789]\d{9}$|"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">Username</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Your Username"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">Password</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Your Password"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style8"></td>
                    <td class="auto-style16"></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style8"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style6"></td>
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
