<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Menu.aspx.vb" Inherits="FoodApp.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/menu.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 5967%;
            height: 223px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="menu">
    <div class="datalist">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
         <ItemTemplate>
                <div class="dish-container">
                    <div class="dish-box text-center">
                        <div class="dist-img">
                            <asp:Image ID="Image1" CssClass="img" runat="server" ImageUrl='<%# Eval("IMageUrl") %>' />
                        </div>
                        <div class="dish-rating">
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Rating") %>'></asp:Label>
                            <i class="uil uil-star"></i>
                        </div>
                        <div class="dish-title">
                            <h3 class="h3-title">
                                <asp:Label ID="Label2" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                            </h3>

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
                                        </asp:Label></b>
                                </li>
                                <li>
                                    <asp:LinkButton ID="LinkButton2" CssClass="dish-add-btn" runat="server" PostBackUrl='<%# "productDetails.aspx?pid=" + Eval("PID") %>' Text=" ">
                                                + 
                                            </asp:LinkButton>
                                       <%--<asp:LinkButton ID="LinkButton1" CssClass="add" PostBackUrl='<%# "productDetails.aspx?PID= " + Eval("PID") %>' runat="server"  >
                                        </asp:LinkButton>--%> 
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </ItemTemplate>
    </asp:Repeater>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [productTab]"></asp:SqlDataSource>
     
</asp:Content>
