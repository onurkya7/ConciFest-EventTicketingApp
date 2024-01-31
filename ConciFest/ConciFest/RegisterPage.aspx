<%@ Page Title="" Language="C#" MasterPageFile="~/GuestPage.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="ConciFes.RegisterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div id="header" runat="server">
            <header class="site-header">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-12 d-flex flex-wrap">
                            <p class="d-flex me-4 mb-0">
                                <i class="bi-person custom-icon me-2"></i>
                                <strong class="text-dark">Konser ve Festival Tanıtımlarına Hoşgeldiniz</strong>
                            </p>
                        </div>
                    </div>
                </div>
            </header>
    </div>
    <div id="section" runat="server" class="section section-registerpage"> 
        <section class="ticket-section section-padding">
                <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-10 mx-auto">
                            <form class="custom-form ticket-form mb-5 mb-lg-0" action="#" method="post" role="form" runat="server">
                                <h2 class="text-center mb-4">ConciFest'li Ol</h2>

                                <div class="ticket-form-body">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-12">
                                                <asp:TextBox ID="TextUserName" CssClass="form-control" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
                                                 <asp:TextBox ID="TextSifre" CssClass="form-control" runat="server" placeholder="Şifre"></asp:TextBox>
                                                 <asp:TextBox ID="TextAd" CssClass="form-control" runat="server" placeholder="Ad"></asp:TextBox>
                                                <asp:TextBox ID="TextSoyad" CssClass="form-control" runat="server" placeholder="Soyad"></asp:TextBox>
                                                <asp:TextBox ID="TextEmail" CssClass="form-control" runat="server" placeholder="E-Mail"></asp:TextBox>                                       
                                    </div>    
                                        <div style="text-align: center;">
                                            <asp:Label ID="Label1" runat="server" CssClass="uyari-mesaji" Visible="false" style="color: green; font-weight: bold;"></asp:Label>
                                        </div>
                                </div>                                                 
                                <div class="col-lg-4 col-md-6 col-8 mx-auto">
                                    <asp:Button ID="Button1" CssClass="form-control" runat="server" Text="Kayıt Ol" style="background-color: #ee5007; color: white; margin-top: 10px;" OnClick="Button1_Click"/>
                       
                                </div>                            

                                  <ul class="social-icon d-flex justify-content-center" style="flex-direction: column; text-align: center;">
                                    <li class="social-icon-item">
                                        <a href="#" onclick="window.location.href = 'https://www.facebook.com';" style="display: inline-block; padding: 5px;">
                                            <img src="images/icons/facebook.png" alt="Facebook" style="width: 30px; height: 30px; object-fit: cover;">
                                        </a>
                                        <span class="social-icon-text">Facebook</span>
                                    </li>
                                    <li class="social-icon-item">
                                        <a href="#" onclick="window.location.href = 'https://www.google.com';" style="display: inline-block; padding: 5px;">
                                            <img src="images/icons/google.png" alt="Google" style="width: 30px; height: 30px; object-fit: cover;">
                                        </a>
                                        <span class="social-icon-text">Google</span>
                                    </li>
                                </ul>

                                     <div style="border: 2px solid black; padding: 10px; margin-top: 20px;">
                                        <p class="w-100 text-center" style="font-size: 1.2em; font-weight: bold;">
                                            <span style="white-space: nowrap; display: inline-block; padding: 5px 30%; margin-top: 5px;">
                                                Hesabın var mı? <a href="LoginPage.aspx" style="color: blue; text-decoration: underline;">Giriş Yap</a>
                                            </span>
                                        </p>
                                    </div>
                                </div>                               
                            </form>
                         </div>   
                   </div>
                </div>
            </section>
        </div>
</asp:Content>
