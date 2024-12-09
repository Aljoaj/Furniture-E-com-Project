<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addproducts.aspx.cs" Inherits="Promasterpage.Addproducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar</title>
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
            width: 329px;
        }
        .auto-style4 {
            width: 309px;
        }
        .auto-style5 {
            width: 397px;
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
                <a href="Adminview.aspx"><img src="Photo/backbut.png" alt="Home"> </a>
            </div>
        </div>
    </div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">Category Name</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select Category"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">Product Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter product name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">Product Price</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter price"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">Product Photo</td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Upload a photo"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">Product Description</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="Type Description"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">Product Stock</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Stock"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Editproducts.aspx">Update Product</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="69px" ImageUrl="~/Photo/Screenshot 2024-10-07 185824.png" Width="1528px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
