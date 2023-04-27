<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Login.aspx.vb" Inherits="FoodApp.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/log.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="login-form" >
         <div class="form-container">
         <h1>Login</h1>
         <div class="login-form-container">
                <asp:TextBox ID="txtUserName" CssClass="user-name" AutoComplete="off" placeholder="User Name" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtPassword" CssClass="password" textmode="Password" placeholder="password" runat="server"></asp:TextBox>
             <asp:Button ID="btnLogin" CssClass="login-btn" type="button" runat="server" Text="Log In"  />
             <asp:Label ID="lblError" CssClass="error" Text="" runat="server"></asp:Label>
         </div>
         <div id="create-account-wrap">
                <p>Not a member?         <a href="signup.aspx" class="link">Create Account</a><p>
         </div>

         </div>
     </div>
</asp:Content>  
