<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="cartItemDetail.aspx.vb" Inherits="FoodApp.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/cDetail.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="cart-detail">
       <div class="cart-item-container">


                <div class="cart-item">
                        <asp:Image ID="Image1" CssClass="cart-item-img" runat="server"/>
                        <asp:Label ID="txtTitle" CssClass="cart-item-title" runat="server" Text=""></asp:Label>
                    <div class="info-container">
                        <asp:Label ID="txtQuantity" CssClass="title" runat="server" Text="Quantity"></asp:Label>
                        <asp:TextBox ID="txtQty" CssClass="cart-item-quantity" runat="server" TextMode="Number" value="1"></asp:TextBox>
                    </div>    
                    <div class="info-container">
                        <asp:Label ID="txtPriceT" CssClass="title" runat="server" Text="Dish Price"></asp:Label>
                        <asp:Label ID="txtPrice" CssClass="cart-item-price" runat="server" ></asp:Label>
                     </div>
                    <div class="info-container">
                        <asp:Label ID="txtTotalItemPrice" CssClass="title" runat="server" Text="Item Price"></asp:Label>
                        <asp:Label ID="txtTotalPrice" CssClass="cart-item-t-price" runat="server" ></asp:Label>
                    </div>
                    <asp:Button ID="btnUpdate" runat="server" CssClass="update-btn" Text="Update"  />
                    <asp:Button ID="btnRemove" runat="server" CssClass="remove-btn" Text="Remove" />
                </div>
 
        </div>
    </div>
</asp:Content>
