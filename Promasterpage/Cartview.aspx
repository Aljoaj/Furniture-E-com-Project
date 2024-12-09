<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cartview.aspx.cs" Inherits="Promasterpage.Cartview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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
            width: 373px;
        }
        .auto-style3 {
            width: 627px;
        }
    </style>
</head>
<body>
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
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" DataKeyNames="Cartid" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Productname" HeaderText="Product Name" />
                            <asp:BoundField DataField="Productprice" HeaderText="Product Price" />
                            <asp:ImageField DataImageUrlField="Productphoto" HeaderText="Photo">
                                <ControlStyle Height="275px" Width="200px" />
                            </asp:ImageField>
                            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                            <asp:BoundField DataField="Totalprice" HeaderText="Total Price" />
                            <asp:CommandField HeaderText="Remove" ShowDeleteButton="True" />
                            <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Order" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
