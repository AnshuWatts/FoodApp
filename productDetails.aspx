<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="productDetails.aspx.vb" Inherits="FoodApp.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/productDetail.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="detail">
    <div class="dish-container">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>

                <div class="dish-box text-center">
                    <div class="dist-img">
                        <asp:Image ID="Image1" CssClass="img" runat="server" ImageUrl='<%# Eval("IMageUrl") %>' />
                    </div>
                    <div class="d-info-container">
                        <div class="dish-title">
                            <h3 class="h3-title">
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                            </h3>

                        </div>
                     
                        <div class="dish-rating">
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Rating") %>'></asp:Label>
                            <i class="uil uil-star"></i>
                        </div>
                        <div class="dish-info">
                            <ul>
                                <li>
                                    <p>Type</p>
                                    <b>
                                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("Type") %>'></asp:Label>
                                    </b>
                                </li>
                                <li>
                                    <p>Calories</p>
                                    <b>
                                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("Calories") %>'></asp:Label>
                                    </b>
                                </li>
                            </ul>
                        </div>
                        <div class="dist-bottom-row">
                            <ul>
                                <li>
                                    <b>
                                        Rs. <asp:Label ID="Label5" runat="server" Text='<%#Eval("Price") %>'>
                                        </asp:Label>
                                    </b>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>

        <div class="qty-container">
            <div class="qty">
                <p>Quantity</p>
                <asp:TextBox ID="txtQuantity" class="qty-n" runat="server" Textmode="Number" value="1"></asp:TextBox>
            </div>
            <div class="add-cart-btn">
                <asp:Button ID="btnAddTocart" CssClass="dish-add-btn" runat="server" Text="+" />
            </div>
            <asp:Label ID="msg" runat="server" CssClass="msg" Text="Added To Cart..." Visible="False"></asp:Label>
        </div>
    </div>
</div>  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:con %>"
        SelectCommand="SELECT * FROM [productTab] Where ([PID]=@pid)"
        >
        <SelectParameters>
            <asp:QueryStringParameter Name="pid" QueryStringField="pid" Type="String"/>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
