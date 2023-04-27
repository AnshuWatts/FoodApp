<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="About.aspx.vb" Inherits="FoodApp.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/css/about.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="about">
        <div class="about-container"> 
                    <div class="about-content">
                        <h2 class="h2-title">Discover our <span>restaurant story</span></h2>
                        <div class="title-img">
                            <img src="/assets/images/title-shape.svg" alt=""/>
                        </div>
                        <p>This is Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe dolore at
                            aspernatur eveniet temporibus placeat voluptatum quaerat accusamus possimus
                            cupiditate, quidem impedit sed libero id perspiciatis esse earum repellat quam.
                            Dolore modi temporibus quae possimus accusantium, cum corrupti sed deserunt iusto at
                            sapiente nihil sint iste similique soluta dolor! Quod.</p>
                    </div>
            <div class="about-video-container">
                        <div class="about-video-img" style="background-image: url(/assets/images/about.jpg);">
                        </div>
                        <div class="about-play-btn">
                            <a href="/assets/images/video.mp4" class="play-btn">
                                <i class="uil uil-play"></i>

                            </a>
                            <span>Watch The Recipe</span>
                        </div>
            </div>
        </div>
    </section>
    <section id="faq">
        <div class="sub-title-container">
            <p class="sub-title">FAQS</p>  
        </div> 
        <h2 class="h2-title">Frequently <span>asked questions</span></h2>
        <div class="faq-img">
            <img src="/assets/images/title-shape.svg" alt=""/>
        </div>
        <div class="faq-container">
            <div class="faq-box">
                <h4 class="h4-title">What are the login hours?</h4>
                <p>It is Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus ipsum
                    vitae fugit laboriosam dolor distinctio.</p>
            </div>
            <div class="faq-box">
                <h4 class="h4-title">What do i get my refund?</h4>
                <p>It is Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus ipsum
                    vitae fugit laboriosam dolor distinctio. Lorem ipsum dolor sit amet.</p>
            </div>
            <div class="faq-box">
                <h4 class="h4-title">How long it will take food to arrive?</h4>
                <p>It is Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus ipsum
                    vitae fugit laboriosam dolor distinctio.</p>
            </div>
            <div class="faq-box">
                <h4 class="h4-title">Does your restaurant has both veg and non veg?</h4>
                <p>It is Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus ipsum
                    vitae fugit laboriosam dolor distinctio. Lorem ipsum, dolor sit amet consectetur
                    adipisicing elit. Voluptates, distinctio?</p>
            </div>
            <div class="faq-box">
                <h4 class="h4-title">What is cost of food delivery?</h4>
                <p>It is Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus ipsum
                    vitae fugit laboriosam dolor distinctio. Lorem ipsum dolor sit amet consectetur,
                    adipisicing elit. Nam officiis ducimus, cum enim repudiandae animi.</p>
            </div>
            <div class="faq-box">
                <h4 class="h4-title">Who is eligible for pro membership?</h4>
                <p>It is Lorem ipsum dolor, sit amet consectetur adipisicing elit. Temporibus ipsum
                    vitae fugit laboriosam dolor distinctio. </p>
            </div>
        </div>
    </section>
</asp:Content>
