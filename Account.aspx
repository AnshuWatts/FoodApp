<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Account.aspx.vb" Inherits="FoodApp.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/account.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="account">
        <div class="account-container">
            <h1>PROFILE</h1>
            <div class="user-text">
            <asp:Label ID="txtUserName" CssClass="left" runat="server" Text="User Name"></asp:Label>
            <asp:Label ID="txtUserNameValue" CssClass="center" runat="server" Text="Kartik"></asp:Label>
            </div>
            <div class="user-text">
            <asp:Label ID="txtMail" CssClass="left" runat="server" Text="Email"></asp:Label>
            <asp:Label ID="txtMailValue" CssClass="center" runat="server" Text="Kartik@gmail.com"></asp:Label>
            </div>
            <div class="user-text">
            <asp:Label ID="txtPhone" CssClass="left" runat="server" Text="Phone No."></asp:Label>
            <asp:Label ID="txtPhoneValue" CssClass="center" runat="server" Text="86XXXXXX71"></asp:Label>
            </div>
            <div class="user-text">
            <asp:Label ID="txtAddress" CssClass="left" runat="server" Text="Address"></asp:Label>
            <asp:Label ID="txtAddressValue" CssClass="center" runat="server" Text="XX,sector XX ,Chandigarh"></asp:Label>
            </div>
        </div>
         <div class="order-container">
             <h1>Order Details</h1>
             <div class="info-container">
             <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                 <ItemTemplate>
                     <div class="info">
                         <asp:Label ID="txtTitle" CssClass="title" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                         <asp:Label ID="txtQuantity" CssClass="title" runat="server" Text='<%#"x" + Eval("Quantity") %>'></asp:Label>
                     </div>
                 </ItemTemplate>
             </asp:Repeater>
             </div>
             <div class="price">
              <asp:Label ID="txtTotal" CssClass="p-title" runat="server" Text="Total Price"></asp:Label>
              <asp:Label ID="txtTotalValue" CssClass="p-value" runat="server" Text="1234" ></asp:Label>
             </div>
         </div>
    </div>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [buyTab]"></asp:SqlDataSource>
</asp:Content>
