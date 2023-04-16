<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="WebApplication1.Orders" %>

<asp:Content ID="Content8" ContentPlaceHolderID="Orders" runat="server">
    <p>
        <h1>Order desserts</h1>
        <form id="form1" runat="server">
        <div>
            <asp:Label ID="label2" runat="server" Text="Enter Dessert name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </div>
        
        <div>
            <asp:Label ID="label1" runat="server" Text="Enter Quantity"></asp:Label>&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        </div>
        <div>
            <asp:Button runat="server" Text="Submit" OnClick="Unnamed1_Click"></asp:Button>
        </div>
        <div>
            <asp:Label runat="server" ID="yname"></asp:Label>
        </div>
            </form>
    </p>

</asp:Content>
