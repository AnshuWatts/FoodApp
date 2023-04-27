<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Contact.aspx.vb" Inherits="FoodApp.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/contact.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="contact">
        <div class="c-container">
            <div class="con">
                <h2>Contact Us</h2>
                <p>We'd love to hear from you!</p>
                <div class="i-container">
                    <input id="name" type="text" placeholder="Name" />
                    <div class="input">
                        <input id="email" type="email" placeholder="Email" />
                        <input id="number" type="tel" placeholder="Phone Number" />
                    </div>
                    <textarea id="msg" placeholder="Message"></textarea>
                </div>
                <asp:Button ID="btnSend" CssClass="send-btn" runat="server" Text="Send Message" />
            </div>
        </div>


    </div>
</asp:Content>
