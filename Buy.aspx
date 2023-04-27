<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Buy.aspx.vb" Inherits="FoodApp.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/buy.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="buy">
        <div class="buy-container">
            <div class="i-container">
            <asp:Label ID="txtAddressTitle" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="txtAddress" CssClass="input" runat="server" placeholder="Address" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="i-container">
            <asp:Label ID="txtPaymentTitle" runat="server" Text="Payment"></asp:Label>
            <asp:TextBox ID="txtPayment" CssClass="input small" runat="server" Enabled="False" Text="COD"></asp:TextBox>
            </div>
            <div class="i-container">
            <asp:Label ID="txtPhoneT" runat="server" Text="Contact Number"></asp:Label>
            <asp:TextBox ID="txtPhone" CssClass="input small" runat="server" Placeholder="Phone No." TextMode="Number"></asp:TextBox>
            </div>
            <div class="confirm">
            <asp:Button ID="btnConfirm" CssClass="confirm-btn" runat="server" Text="Place Order" />
            <asp:Label ID="msg" CssClass="msg" runat="server" Text="Order Placed"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
