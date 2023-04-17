<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="WebApplication1.Orders" %>

<asp:Content ID="Content8" ContentPlaceHolderID="Orders" runat="server">
    <style>
        input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

    </style>
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
