<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Desserts.aspx.cs" Inherits="WebApplication1.Desserts" %>

<asp:Content ID="Content6" ContentPlaceHolderID="DessertContent" runat="server">
    <style>
        .desserts-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            padding: 50px;
        }
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

        .left1, .right1, .left2, .right2 {
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            width: 300px;
            text-align: center;
        }

        .left2, .right2 {
            background-color: #f2f2f2;
        }

        .form-group {
            margin-bottom: 10px;
            text-align: left;


.left1 {
float: left;
width: 40%;
margin-right: 20px;
}

.right1 {
float: left;
width: 40%;
}

.left2 {
clear: left;
float: left;
width: 40%;
margin-right: 20px;
}

.right2 {
float: left;
width: 40%;
}

input[type=text] {
padding: 5px;
border: 1px solid #ccc;
border-radius: 4px;
box-sizing: border-box;
}

button {
background-color: #4CAF50;
color: white;
padding: 10px 20px;
border: none;
border-radius: 4px;
cursor: pointer;
}

button:hover {
background-color: #45a049;
}

table {
border-collapse: collapse;
width: 100%;
}

th, td {
text-align: left;
padding: 8px;
}

th {
background-color: #4CAF50;
color: white;
}

tr:nth-child(even) {
background-color: #f2f2f2;
}
        </style>
    <form id="form1" runat="server">
        <div class="left1">
            <h1>Display Data</h1>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>

        <div class="right1">
            <h1>Insert Data</h1>
            <div class="form-group">
                <label for="txtname">Name:</label>
                <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtpos">Price:</label>
                <asp:TextBox ID="txtpos" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtsal">Quantity:</label>
                <asp:TextBox ID="txtsal" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btnsub" runat="server" OnClick="btnsub_Click" Text="Insert" CssClass="btn btn-primary" />
        </div>

        <div class="left2">
            <h1>Update Data</h1>
            <div class="form-group">
                <label for="txtuid">Id:</label>
                <asp:TextBox ID="txtuid" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtuname">Name:</label>
                <asp:TextBox ID="txtuname" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtupos">Price:</label>
                <asp:TextBox ID="txtupos" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtusal">Quantity:</label>
                <asp:TextBox ID="txtusal" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btnusub" runat="server" OnClick="btnusub_Click" Text="Update" CssClass="btn btn-primary" />
        </div>

        <div class="right2">
            <h1>Delete Record</h1>
            <div class="form-group">
                <label for="txtdid">Id:</label>
                <asp:TextBox ID="txtdid" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="btndt" runat="server" OnClick="btndt_Click" Text="Delete" CssClass="btn btn-danger" />
        </div>
    </form>
</asp:Content>

