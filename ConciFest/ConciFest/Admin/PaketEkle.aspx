<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PaketEkle.aspx.cs" Inherits="ConciFes.Admin.PaketEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h3 class="page-title">
                        Yeni Paket Ekleme Sayfası
    </h3>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
          <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName1">Paket İsmi</label>
                        <asp:TextBox ID="TextIsim" runat="server" CssClass="form-control" placeholder ="Paket İsmi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Paket Fiyatı</label>
                       <asp:TextBox ID="TextFiyat" runat="server" CssClass="form-control" placeholder ="Paket Fiyatı"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Paket Özelliği 1</label>
                      <asp:TextBox ID="TextOz1" runat="server" CssClass="form-control" placeholder ="Paket Özelliği"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Paket Özelliği 2</label>
                      <asp:TextBox ID="TextOz2" runat="server" CssClass="form-control" placeholder ="Paket Özelliği"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Paket Özelliği 3</label>
                      <asp:TextBox ID="TextOz3" runat="server" CssClass="form-control" placeholder ="Paket Özelliği"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Paket Özelliği 4</label>
                      <asp:TextBox ID="TextOz4" runat="server" CssClass="form-control" placeholder ="Paket Özelliği"></asp:TextBox>
                    </div>
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click"/>
                  </div>
                </div>
              </div>
            </div>           
</asp:Content>
         