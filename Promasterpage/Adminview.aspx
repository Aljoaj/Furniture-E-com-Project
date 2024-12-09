<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminview.aspx.cs" Inherits="Promasterpage.Adminview" %>

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
        .auto-style2 {
            width: 305px;
        }
        .auto-style3 {
            width: 305px;
            height: 15px;
        }
        .auto-style4 {
            height: 15px;
        }
        .auto-style5 {
            width: 305px;
            height: 27px;
        }
        .auto-style6 {
            height: 27px;
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
                <a href="Loginform.aspx"><img src="Photo/backbut.png" alt="Home"> </a>
            </div>
        </div>
    </div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl="~/Photo/ad1.png" Width="1500px" />
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#B94E36" NavigateUrl="~/Addcategory.aspx">Add Category</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#BD5033" NavigateUrl="~/Editcategory.aspx">Edit Category</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#BB4E33" NavigateUrl="~/Addproducts.aspx">Add Products</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#C04D31" NavigateUrl="~/Editproducts.aspx">Edit Products</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Image ID="Image3" runat="server" Height="200px" ImageUrl="~/Photo/ad2.png" Width="1500px" />
                            </td>
                        </tr>
                    </table>
                    <asp:Image ID="Image1" runat="server" Height="69px" ImageUrl="~/Photo/Screenshot 2024-10-07 185824.png" Width="1528px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
