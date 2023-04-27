<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Cart.aspx.vb" Inherits="FoodApp.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/cartItem.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="cart">
        <div class="cart-item-container">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
            <ItemTemplate>
                <div class="cart-item">
                        <asp:Image ID="Image1" CssClass="cart-item-img" runat="server" ImageUrl='<%#Eval("Imageurl") %>' />
                        <asp:Label ID="Label1" CssClass="cart-item-title" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                    <div class="info-container">
                        <asp:Label ID="txtQuantity" CssClass="title" runat="server" Text="Quantity"></asp:Label>
                    <asp:Label ID="Label2" CssClass="cart-item-quantity" runat="server" Text='<%#Bind("Quantity") %>'></asp:Label>
                    </div>    
                    <div class="info-container">
                        <asp:Label ID="txtPrice" CssClass="title" runat="server" Text="Dish Price"></asp:Label>
                        <asp:Label ID="Label3" CssClass="cart-item-price" runat="server" Text='<%#Bind("Price") %>'></asp:Label>
                     </div>
                    <div class="info-container">
                        <asp:Label ID="txtTotalItemPrice" CssClass="title" runat="server" Text="Item Price"></asp:Label>
                        <asp:Label ID="Label4" CssClass="cart-item-t-price" runat="server" Text='<%# Convert.ToInt32(Eval("Price")) * Convert.ToInt32(Eval("Quantity")).ToString() %>'></asp:Label>
                    </div>
                    <asp:Button ID="Button1" runat="server" CssClass="edit-btn" Text="Edit" PostBackUrl= '<%# "cartItemDetail.aspx?pid=" + Eval("PID") %>' />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        </div>
    
     <div class="buy-container ">
        <div class="price-container">
            <p>
                Total Price
            </p>
            <asp:Label ID="txtTotalPrice" runat="server" Text="0"></asp:Label>
        </div>
         <asp:Button ID="btnBuyNow" CssClass="edit-btn" runat="server" Text="Buy Now" PostBackUrl="~/Buy.aspx" />
     </div>
     
     </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [cartTab] WHERE ([UID] = @UID)">
        <SelectParameters>
            <asp:SessionParameter Name="UID" SessionField="user_id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
