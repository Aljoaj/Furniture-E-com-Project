<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productview.aspx.cs" Inherits="Promasterpage.Productview" %>

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
            width: 89px;
        }
        .auto-style3 {
            width: 827px;
        }
        .auto-style4 {
            width: 26px;
        }
        .auto-style5 {
            width: 89px;
            height: 568px;
        }
        .auto-style6 {
            width: 827px;
            height: 568px;
        }
        .auto-style7 {
            width: 26px;
            height: 568px;
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
                <a href="Categoryview.aspx"><img src="Photo/backbut.png" alt="User" width="35"></a>
            </div>
            <div class="icon">
                <a href="Cartview.aspx"><img src="Photo/basket-icon.png.png" alt="User" width="35"></a>
            </div>
        </div>
    </div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="300px" RepeatColumns="4" Width="620px">
                        <AlternatingItemStyle BackColor="#DCDCDC" />
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text='<%# Eval("Productname") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp; Price:&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("Productprice") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="300px" ImageUrl='<%# Eval("Productphoto") %>' Width="250px" CommandArgument='<%# Eval("Productid") %>' OnClick="ImageButton1_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Productdescription") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Productstatus") %>'></asp:Label>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Productstock") %>'></asp:Label>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cartview.aspx">Cart View</asp:HyperLink>
                </td>
                <td class="auto-style4">&nbsp;</td>
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
