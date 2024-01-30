<%@ Page Title="" Language="C#" MasterPageFile="~/MemberPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ConciFes.Profile1" %>
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
        <div id="section" runat="server" class="section section-profilepage"> 
             <section class="ticket-section section-padding">
                    <div class="section-overlay"></div>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-10 col-10 mx-auto">
                                <div class="custom-form ticket-form mb-5 mb-lg-0">
                                    <h2 class="text-center mb-4">ConciFest Profili</h2>
                                    <div class="ticket-form-body">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-12">    
                                                <label for="email">Şifreni değiştir:</label>   
                                                <asp:TextBox ID="TextSifre" CssClass="form-control" runat="server" TextMode="Password" placeholder="Şifre"></asp:TextBox>
                                                <asp:TextBox ID="TextSifreTekrar" CssClass="form-control" runat="server" TextMode="Password" placeholder="Şifre Tekrar"></asp:TextBox>
                                                <label for="email">Ad'ını değiştir:</label>   
                                                <asp:TextBox ID="TextAd" CssClass="form-control" runat="server" placeholder="Ad"></asp:TextBox>
                                                <label for="email">Soyad'ını değiştir:</label>   
                                                <asp:TextBox ID="TextSoyad" CssClass="form-control" runat="server" placeholder="Soyad"></asp:TextBox>
                                                <label for="email">E-Posta'nı değiştir:</label>    
                                                <asp:TextBox ID="TextEmail" CssClass="form-control" runat="server" placeholder="E-Mail"></asp:TextBox>                                  
                                            </div>                                                                            
                                                <div class="col-lg-6 col-md-6 col-12">

                                               <div class="artists-image-wrap">
                                                    <asp:Image ID="imgResim" runat="server" Width="300px" Height="300px" />
                                                </div>

                                                <div class="form-group">
                                                      <label>Resim</label>                              
                                                      <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info"/>
                                                        <asp:Button ID="Button2" runat="server" Text="Resim Yükle" CssClass="btn btn-gradient-primary mr-2" OnClick="Button2_Click"/>
                                                </div>
                                                 <div class="form-group">
                                                      <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                                                </div>

                                            </div>
                                        </div> 
                                        <div class="col-lg-4 col-md-6 col-8 mx-auto">
                                            <asp:Button ID="Button1" CssClass="form-control" runat="server" Text="Kaydet" style="background-color: #ee5007; color: white; margin-top: 10px;" OnClick="Button1_Click"/>
                                        
                                        </div>
                                        <div style="text-align: center;">
                                            <asp:Label ID="lblMesaj" runat="server" CssClass="uyari-mesaji" Visible="false" style="color: green; font-weight: bold;"></asp:Label>
                                        </div>
                                    </div>                               
                                </div>
                            </div>   
                        </div>
                    </div>
                </section>
        </div>
</asp:Content>
