<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="signup.aspx.vb" Inherits="FoodApp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/log.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="signup-form">
          <div class="form-container">
         <h1>Register</h1>
         <div class="login-form-container">
                <asp:TextBox ID="txtUserName" CssClass="user-name" AutoComplete="off" placeholder="Enter User Name" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtUserEmail" CssClass="user-name" AutoComplete="off" placeholder="Enter Email" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtPassword" CssClass="password" textmode="Password" placeholder="Enter password" runat="server"></asp:TextBox>
             <asp:TextBox ID="txtRePassword" CssClass="password" textmode="Password" placeholder="Re Enter password" runat="server"></asp:TextBox>
             <asp:Button ID="btnLogin" CssClass="login-btn" type="button" runat="server" Text="Sign up"  />
             <asp:Label ID="lblError" CssClass="error" Text="" runat="server"></asp:Label>
         </div>
         <div id="create-account-wrap">
                <p>Already have account ?  <a href="Login.aspx" class="link"> Log In</a><p>
         </div>

         </div>
     </div>
</asp:Content>
