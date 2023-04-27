<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Home.aspx.vb" Inherits="FoodApp.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .home-active{
             color: #ff8243 !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="home-section">
            <div class="home-section-container">
                <div class="banner-text">
                    <h1 class="h1-title">
                        Welcome To Our
                        <span>ZoRo</span>
                        Restaurant.
                    </h1>
                    <p class="banner-decription">This is Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam eius vel tempore consectetur nesciunt? Nam eius tenetur recusandae optio aperiam.</p>
                    <div class="banner-btn">
                        <a href="Menu.aspx" class="banner-section-btn">Check Our Menu</a>
                    </div>
                </div>
                <div class="banner-image-container">
                    <div class="banner-img" style="background-image: url(assets/images/main-b.jpg);">
                    </div>
                </div>
            </div>
        </section>
        <section id="gallery">
            <div class="sub-title-container">
                <p class="sub-title">Gallery</p>
            </div>
            <div class="slider-container">
                <div class="slider-wrapper">
                    <div class="slider">
                        <img id="slide-1" src="assets/images/bt1.jpg" alt="image1"/>
                        <img id="slide-2" src="assets/images/bt2.jpg" alt="image2"/>
                        <img id="slide-3" src="assets/images/bt3.jpg" alt="image3"/>
                        <img id="slide-4" src="assets/images/bt4.jpg" alt="image4"/>
                        <img id="slide-5" src="assets/images/bt1.jpg" alt="image1"/>
                        <img id="slide-6" src="assets/images/bt2.jpg" alt="image2"/>
                        <img id="slide-7" src="assets/images/bt3.jpg" alt="image3"/>
                        <img id="slide-8" src="assets/images/bt4.jpg" alt="image4"/>
                    </div>
                    <div class="slider-nav">
                        <a href="#slide-1"></a>
                        <a href="#slide-2"></a>
                        <a href="#slide-3"></a>
                        <a href="#slide-4"></a>
                        <a href="#slide-5"></a>
                        <a href="#slide-6"></a>
                        <a href="#slide-7"></a>
                        <a href="#slide-8"></a>
                    </div>
                </div>
            </div> 
        </section>
</asp:Content>
