<%@ Page Title="" Language="C#" MasterPageFile="~/MemberPage.Master" AutoEventWireup="true" CodeBehind="BuyPacket.aspx.cs" Inherits="ConciFes.BuyPacket" %>

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
    <div id="section" runat="server" class="section section-buyticketpage"> 
        <section class="ticket-section section-padding">
                <div class="section-overlay"></div>

                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-10 mx-auto">
                            <div class="custom-form ticket-form mb-5 mb-lg-0">
                                <h2 class="text-center mb-4">Paket alma</h2>

                                <div class="ticket-form-body">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-12">
                                            <asp:TextBox ID="TextUserName" CssClass="form-control" runat="server" style="border-color: blue;"></asp:TextBox>
                                        </div>

                                        <div class="col-lg-6 col-md-6 col-12">
                                            <asp:TextBox ID="TextEmail" CssClass="form-control" runat="server" style="border-color: blue;"></asp:TextBox>
                                        </div>

                                    </div>

                                    <asp:TextBox ID="TextTelefon" placeholder= "Telefon Numarası" CssClass="form-control" runat="server"></asp:TextBox>
                                    <h6>Paket tipini seç</h6>

                                    <asp:DropDownList ID="DropDownListOptions" runat="server" style="margin-bottom: 20px;" CssClass="form-control">
                                    </asp:DropDownList>

                                    <textarea name="ticket-form-message" rows="3" class="form-control"
                                        id="ticket-form-message" placeholder="Ek Talep"></textarea>

                                    <div class="col-lg-4 col-md-10 col-8 mx-auto">
                                         <asp:Button ID="Button1" CssClass="form-control" runat="server" Text="Paket Al" style="background-color: #ee5007; color: white; margin-top: 10px;" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 </div>
        </section>
        </div>
</asp:Content>
