<%@ Page Title="" Language="C#" MasterPageFile="~/GuestPage.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ConciFes.LoginPage1" %>
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
    <div id="section" runat="server" class="section section-loginpage"> 
        
        <section class="ticket-section section-padding">
                <div class="section-overlay"></div>
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-10 mx-auto">
                            <form class="custom-form ticket-form mb-5 mb-lg-0" action="#" method="post" role="form" runat="server">
                                <h2 class="text-center mb-4">Hesabın Var mı?</h2>
                       
                                <div class="ticket-form-body">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-12">
                                            <asp:TextBox ID="TextUserName" CssClass="form-control" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>                                
                                    </div>                                
                                </div>                         
                                 <asp:TextBox ID="TextSifre" CssClass="form-control" runat="server"  placeholder="Şifre"></asp:TextBox>
                                <span toggle="#password-field1" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                               
                                        <div style="text-align: center;">
                                            <asp:Label ID="Label1" runat="server" CssClass="uyari-mesaji" Visible="false" style="color: green; font-weight: bold;"></asp:Label>
                                        </div>

                                <label class="checkbox-wrap checkbox-primary" style="font-size: 18px;  margin-bottom: 10px;">Beni hatırla!
                                        <input type="checkbox" checked style="transform: scale(1.3); margin-left: 5px;">
                                        <span class="checkmark"></span>
                                </label>

                                <div class="col-lg-4 col-md-6 col-8 mx-auto">
                                   <asp:Button ID="Button1" CssClass="form-control" runat="server" Text="Giriş Yap" style="background-color: #ee5007; color: white; margin-top: 10px;" OnClick="Button1_Click" />
               
                                </div>

                               <div class="row">                          
                                   <div class="col-lg-12 col-md-12 col-12 text-center">
                                        <a href="#" style="color: blue; text-decoration: underline; font-size: 18px; margin-bottom: 30px;">Şifreni mi unuttun?</a> 
                                    </div>

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
                                                  Hesabın yok mu? <a href="RegisterPage.aspx" style="color: blue; text-decoration: underline;">Kayıt ol</a>
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
