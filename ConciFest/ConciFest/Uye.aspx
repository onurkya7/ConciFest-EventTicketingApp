<%@ Page Title="" Language="C#" MasterPageFile="~/MemberPage.Master" AutoEventWireup="true" CodeBehind="Uye.aspx.cs" Inherits="ConciFes.Uye" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
        <div id="section" runat="server" class="section section-uyepage">
            <!-- ANASAYFA - 1 -->
        
            <section class="hero-section" id="section_1">
                <div class="section-overlay"></div>

                <div class="container d-flex justify-content-center align-items-center">
                    <div class="row">

                        <div class="col-12 mt-auto mb-5 text-center">
                            <small>ConciFest Resmi Web Sitesi</small>

                            <h1 class="text-white mb-5">Live 2023</h1>

                            <a class="btn custom-btn smoothscroll" href="#section_2">Başlayalım</a>
                        </div>

                        <div class="col-lg-12 col-12 mt-auto d-flex flex-column flex-lg-row text-center">
                            <div class="date-wrap">
                                <h5 class="text-white">
                                    <i class="custom-icon bi-geo-alt me-2"></i>
                                    Elazığ, Türkiye
                                </h5>
                        </div>

                        <div class="location-wrap mx-auto py-3 py-lg-0">
                            <h5 class="text-white">
                                
                            </h5>
                        </div>

                            <div class="social-share">
                                <ul class="social-icon d-flex align-items-center justify-content-center">
                                    <span class="text-white me-3">Paylaş:</span>

                                   <li class="social-icon-item">
                                    <a href="https://www.facebook.com" class="social-icon-link">
                                        <span class="bi-facebook"></span>
                                    </a>
                                </li>

                                <li class="social-icon-item">
                                    <a href="https://www.twitter.com" class="social-icon-link">
                                        <span class="bi-twitter"></span>
                                    </a>
                                </li>

                                <li class="social-icon-item">
                                    <a href="https://www.instagram.com" class="social-icon-link">
                                        <span class="bi-instagram"></span>
                                    </a>
                                </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="video-wrap">
                    <video autoplay="" loop="" muted="" class="custom-video" poster="">
                        <source src="video/pex1.mp4" type="video/mp4">

                        İnternet tarayıcın bu videoyu desteklemiyor..
                    </video>
                </div>
            </section>  


            <!-- HAKKINDA - 2 -->

            <section class="about-section section-padding" id="section_2">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-12 mb-4 mb-lg-0 d-flex align-items-center">
                            <div class="services-info">
                                <h2 class="text-white mb-4">ConciFest Hakkında</h2>

                                <p class="text-white">Hoş geldiniz! Bizimle birlikte zamanınızın tadını çıkaracağınız bir etkinlik için buradasınız. Bilet satışı, festival, konser gibi çeşitli etkinlikler için gerekli paketleri burada bulabilirsiniz. Sitemizde aradığınız tüm etkinlikler için detaylı bilgiler ve seçenekler mevcut. 
                                    Bizimle işlem yapmanın avantajı, her zaman en güncel etkinlikleri en uygun fiyata bulabilmenizdir. </p>

                                <h6 class="text-white mt-4">Etkinlik Tipleri</h6>

                                <p class="text-white">Konserler,                                         
                                                      Festivaller,
                                                      Özel etkinlikler</p>

                                <h6 class="text-white mt-4">Hizmetlerimiz</h6>

                                <p class="text-white">Sitemizde güvenli ödeme yöntemleriyle işlem yapabilirsiniz. 
                                    Müşteri hizmetleri ekibimiz her zaman sorularınız veya ihtiyaçlarınız için size yardımcı olmaya hazır. 
                                    İletişim sayfamız üzerinden bize kolayca ulaşabilirsiniz.
                                    <br />
                                    <br />
                                   Sizlerin memnuniyeti bizim önceliğimizdir... </p>
                            </div>
                        </div>

                        <div class="col-lg-6 col-12 d-flex align-items-center">
                            <div class="about-text-wrap">
                                <img src="images/sanatcilar.jpg" class="about-image img-fluid">
                                <div class="about-text-info d-flex">
                                    <div class="d-flex">
                                        <i class="about-text-icon bi-person"></i>
                                    </div> 


                                    <div class="ms-4">
                                        <h3>Mutluluk paylaşınca güzeldir</h3>

                                        <p class="mb-0">Bu muhteşem anı birlikte deneyimleyelim</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>


            <!-- SANATÇILAR - 3 -->
            <section class="artists-section section-padding" id="section_3">
                <div class="container">
                    <div class="row">
                        <div class="col-12 text-center">
                            <h2 class="mb-4">Sanatçılar</h2>
                        </div>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConciFestConnectionString %>' SelectCommand="SELECT * FROM [tblSanatci]"></asp:SqlDataSource>
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <div class="col mb-4">
                                    <div class="artists-thumb" style="margin: 30px;">
                                        <div class="artists-image-wrap">
                                            <img src="images/artists/<%# Eval("Resim") %>"
                                                class="artists-image img-fluid" style="height: 450px; object-fit: cover;">
                                        </div>
                                        <div class="artists-hover">
                                                <p>
                                                <strong style="color: white;">İsim:</strong>
                                                    <span style="color: black;"><%# Eval("Isim") %> <%# Eval("Soyisim") %></span>
                                            </p>
                                            <p>
                                                <strong style="color: white;">Müzik:</strong>
                                                <span style="color: black;"><%# Eval("Tur") %></span>
                                            </p>
                                            <hr>
                                            <p class="mb-0">
                                                <strong style="color: white;">Youtube Kanalı:</strong>
                                                <a href="#" style="color: black;"><%# Eval("Kanal") %></a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
            </section>

             <!-- PLANLAR - 4 -->

            <section class="schedule-section section-padding" id="section_4">
                 <div class="row justify-content-center">
                    <div class="row" style="width:1400px";>
                        <div class="col-12 text-center">
                            <h2 class="text-white mb-4">Planlar</h2>

                            <asp:SqlDataSource ID="SqlDataSource_Hafta1" runat="server" ConnectionString="<%$ ConnectionStrings:ConciFestConnectionString %>" SelectCommand="SELECT * FROM [tblPlan] WHERE Tarih_gun BETWEEN 1 AND 7"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource_Hafta2" runat="server" ConnectionString="<%$ ConnectionStrings:ConciFestConnectionString %>" SelectCommand="SELECT * FROM [tblPlan] WHERE Tarih_gun BETWEEN 8 AND 14"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource_Hafta3" runat="server" ConnectionString="<%$ ConnectionStrings:ConciFestConnectionString %>" SelectCommand="SELECT * FROM [tblPlan] WHERE Tarih_gun BETWEEN 15 AND 21"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource_Hafta4" runat="server" ConnectionString="<%$ ConnectionStrings:ConciFestConnectionString %>" SelectCommand="SELECT * FROM [tblPlan] WHERE Tarih_gun BETWEEN 22 AND 31"></asp:SqlDataSource>
                        

                                         <div class="table-responsive">
                                               <table class="schedule-table table table-dark">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">Hafta 1</th>
                                                        <th scope="col">Hafta 2</th>
                                                        <th scope="col">Hafta 3</th>
                                                        <th scope="col">Hafta 4</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td style="padding: 0;">
                                                            <asp:DataList ID="DataList2" runat="server" DataKeyField="id" DataSourceID="SqlDataSource_Hafta1">
                                                                <ItemTemplate>
                                                                   <div class="col mb-4">
                                                                        <div class="artists-thumb" style="margin:20px;">
                                                                            <div class="artists-image-wrap">
                                                                                <img src="images/plan/<%# Eval("Resim") %>" class="artists-image img-fluid" style="height: 330px; width: 300px; object-fit: cover;">
                                                                            </div>
                                                                            <div class="artists-hover" style="height: 250px; margin-top: 10px">
                                                                                <div style="text-align: center;">
                                                                                    <h3><%# Eval("Isim") %> <%# Eval("Soyisim") %></h3>
                                                                                    <p class="mb-2"><%# Eval("Konum") %>, <%# Eval("Sehir") %></p>
                                                                                    <p class="mb-2"><%# Eval("Tarih_gun") %> <%# Eval("Tarih_ay") %>, <%# Eval("Saat") %></p>
                                                                                    <p><%# Eval("Etkinlik") %> <%# Eval("Tur") %></p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </td>
                                                        <td style="padding: 0;">
                                                            <asp:DataList ID="DataList3" runat="server" DataKeyField="id" DataSourceID="SqlDataSource_Hafta2">
                                                                 <ItemTemplate>
                                                                    <div class="col mb-4">
                                                                        <div class="artists-thumb" style="margin: 20px;">
                                                                            <div class="artists-image-wrap">
                                                                                <img src="images/plan/<%# Eval("Resim") %>" class="artists-image img-fluid" style="height: 330px; width: 300px; object-fit: cover;">
                                                                            </div>
                                                                            <div class="artists-hover" style="height: 250px; margin-top: 10px">
                                                                                <div style="text-align: center;">
                                                                                    <h3><%# Eval("Isim") %> <%# Eval("Soyisim") %></h3>
                                                                                    <p class="mb-2"><%# Eval("Konum") %>, <%# Eval("Sehir") %></p>
                                                                                    <p class="mb-2"><%# Eval("Tarih_gun") %> <%# Eval("Tarih_ay") %>, <%# Eval("Saat") %></p>
                                                                                    <p><%# Eval("Etkinlik") %> <%# Eval("Tur") %></p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </td>
                                                        <td style="padding: 0;">
                                                            <asp:DataList ID="DataList4" runat="server" DataKeyField="id" DataSourceID="SqlDataSource_Hafta3">
                                                                 <ItemTemplate>
                                                                    <div class="col mb-4">
                                                                        <div class="artists-thumb" style="margin: 20px;">
                                                                            <div class="artists-image-wrap">
                                                                                <img src="images/plan/<%# Eval("Resim") %>" class="artists-image img-fluid" style="height: 330px; width: 300px; object-fit: cover;">
                                                                            </div>
                                                                            <div class="artists-hover" style="height: 250px; margin-top: 10px">
                                                                                <div style="text-align: center;">
                                                                                    <h3><%# Eval("Isim") %> <%# Eval("Soyisim") %></h3>
                                                                                    <p class="mb-2"><%# Eval("Konum") %>, <%# Eval("Sehir") %></p>
                                                                                    <p class="mb-2"><%# Eval("Tarih_gun") %> <%# Eval("Tarih_ay") %>, <%# Eval("Saat") %></p>
                                                                                    <p><%# Eval("Etkinlik") %> <%# Eval("Tur") %></p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </td>
                                                        <td style="padding: 0;">
                                                            <asp:DataList ID="DataList5" runat="server" DataKeyField="id" DataSourceID="SqlDataSource_Hafta4">
                                                                 <ItemTemplate>
                                                                    <div class="col mb-4">
                                                                        <div class="artists-thumb" style="margin: 20px;">
                                                                            <div class="artists-image-wrap">
                                                                                <img src="images/plan/<%# Eval("Resim") %>" class="artists-image img-fluid" style="height: 330px; width: 300px; object-fit: cover;">
                                                                            </div>
                                                                            <div class="artists-hover" style="height: 250px; margin-top: 10px">
                                                                                <div style="text-align: center;">
                                                                                    <h3><%# Eval("Isim") %> <%# Eval("Soyisim") %></h3>
                                                                                    <p class="mb-2"><%# Eval("Konum") %>, <%# Eval("Sehir") %></p>
                                                                                    <p class="mb-2"><%# Eval("Tarih_gun") %> <%# Eval("Tarih_ay") %>, <%# Eval("Saat") %></p>
                                                                                    <p><%# Eval("Etkinlik") %> <%# Eval("Tur") %></p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </ItemTemplate>
                                                            </asp:DataList>
                                                        </td>
                                                </tbody>
                                            </table>
                                    </div>         
                        </div>
                    </div>
                </div>
            </section>

        
            <!-- PAKETLER - 5 -->

            <section class="pricing-section section-padding section-bg" id="section_5">
                <div class="container">
                    <div class="row">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConciFestConnectionString %>" DeleteCommand="DELETE FROM [tblPaket] WHERE [id] = @id" InsertCommand="INSERT INTO [tblPaket] ([Isim], [Fiyat], [Paket1], [Paket2], [Paket3], [Paket4]) VALUES (@Isim, @Fiyat, @Paket1, @Paket2, @Paket3, @Paket4)" SelectCommand="SELECT * FROM [tblPaket]" UpdateCommand="UPDATE [tblPaket] SET [Isim] = @Isim, [Fiyat] = @Fiyat, [Paket1] = @Paket1, [Paket2] = @Paket2, [Paket3] = @Paket3, [Paket4] = @Paket4 WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Isim" Type="String" />
                                <asp:Parameter Name="Fiyat" Type="Int32" />
                                <asp:Parameter Name="Paket1" Type="String" />
                                <asp:Parameter Name="Paket2" Type="String" />
                                <asp:Parameter Name="Paket3" Type="String" />
                                <asp:Parameter Name="Paket4" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Isim" Type="String" />
                                <asp:Parameter Name="Fiyat" Type="Int32" />
                                <asp:Parameter Name="Paket1" Type="String" />
                                <asp:Parameter Name="Paket2" Type="String" />
                                <asp:Parameter Name="Paket3" Type="String" />
                                <asp:Parameter Name="Paket4" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>


                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <HeaderTemplate>
                                <table style="width: 100%; margin: 0 auto; display: flex; justify-content: center;">
                                    <tr>
                                        <h2 class="text-center mb-4">Planlar hayatını değiştirir..</h2>
                                    </tr>
                            </HeaderTemplate>

                           <ItemTemplate>
                            <td style="width: 25%; text-align: center;">
                                <div class="" style="padding:20px">
                                    <div class="">
                                    </div>
                                    <div class="" style="width:500px;">
                                        <div class="">
                                            <div class="pricing-thumb">
                                                <div class="d-flex">
                                                    <div>
                                                        <h3><small><%# Eval("Isim") %></small> <%# Eval("Fiyat") %> TL</h3>
                                                        <p style="text-decoration: underline; color: blue; font-size: 18px;">Bu paket şu özellikleri içerir:</p>
                                                    </div>
                                                    <p class="pricing-tag ms-auto"><%# Eval("Isim") %> Packet</p>
                                                </div>
                                                <ul class="pricing-list mt-3">
                                                    <li class="pricing-list-item"><%# Eval("Paket1") %></li>
                                                    <li class="pricing-list-item"><%# Eval("Paket2") %></li>
                                                    <li class="pricing-list-item"><%# Eval("Paket3") %></li>
                                                    <li class="pricing-list-item"><%# Eval("Paket4") %></li>
                                                </ul>
                                                <a class="link-fx-1 color-contrast-higher mt-4" href="BuyPacket.aspx">
                                                    <span>Paketi Al</span>
                                                    <svg class="icon" viewBox="0 0 32 32" aria-hidden="true">
                                                        <g fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round">
                                                            <circle cx="16" cy="16" r="15.5"></circle>
                                                            <line x1="10" y1="18" x2="16" y2="12"></line>
                                                            <line x1="16" y1="12" x2="22" y2="18"></line>
                                                        </g>
                                                    </svg>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </ItemTemplate>

                            <FooterTemplate>
                                </tr>
                                </table>
                            </FooterTemplate>

                        </asp:Repeater>       
                    </div>
                </div>
            
            </section>
      

            <!-- İLETİŞİM - 6 -->

            <section class="contact-section section-padding" id="section_6">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8 col-12 mx-auto">
                            <h2 class="text-center mb-4">Merak ettiklerin mi var?</h2>

                            <nav class="d-flex justify-content-center">
                                <div class="nav nav-tabs align-items-baseline justify-content-center" id="nav-tab"
                                    role="tablist">
                                    <button class="nav-link active" id="nav-ContactForm-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-ContactForm" type="button" role="tab"
                                        aria-controls="nav-ContactForm" aria-selected="false">
                                        <h5>İletişim</h5>
                                    </button>

                                    <button class="nav-link" id="nav-ContactMap-tab" data-bs-toggle="tab"
                                        data-bs-target="#nav-ContactMap" type="button" role="tab"
                                        aria-controls="nav-ContactMap" aria-selected="false">
                                        <h5>Google Haritalar</h5>
                                    </button>
                                </div>
                            </nav>

                            <div class="tab-content shadow-lg mt-5" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-ContactForm" role="tabpanel"
                                    aria-labelledby="nav-ContactForm-tab">
                                    <div class="custom-form contact-form mb-5 mb-lg-0">
                                        <div class="contact-form-body">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6 col-12">
                                                    <asp:TextBox ID="txtName" CssClass="form-control" placeholder="İsim" runat="server"></asp:TextBox>
                                               
                                                </div>

                                                <div class="col-lg-6 col-md-6 col-12">
                                                    <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email adresi" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            <asp:TextBox ID="txtCompany" CssClass="form-control" placeholder="Kurum ismi" runat="server"></asp:TextBox>

                                            <asp:TextBox ID="TextMsg" CssClass="form-control" Height="150pt" placeholder="Mesaj" TextMode="MultiLine" runat="server"></asp:TextBox>
                                        
                                            <div class="col-lg-4 col-md-10 col-8 mx-auto">
                                                <asp:Button ID="buttonSend" CssClass="form-control" runat="server" Text="Mesaj Yolla" style="background-color: #ee5007; color: white; margin-top: 10px;" OnClick="buttonSend_Click"/>
                                            </div>
                                            <div style="text-align: center;">
                                            <asp:Label ID="lblMesaj" runat="server" CssClass="uyari-mesaji" Visible="false" style="color: green; font-weight: bold;"></asp:Label>
                                        </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="nav-ContactMap" role="tabpanel"
                                    aria-labelledby="nav-ContactMap-tab">
                                    <iframe class="google-map"
                                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29974.469402870927!2d120.94861466021855!3d14.106066818082482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd777b1ab54c8f%3A0x6ecc514451ce2be8!2sTagaytay%2C%20Cavite%2C%20Philippines!5e1!3m2!1sen!2smy!4v1670344209509!5m2!1sen!2smy"
                                        width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                                    <!-- You can easily copy the embed code from Google Maps -> Share -> Embed a map // -->
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>  
       </div>
</asp:Content>


  
