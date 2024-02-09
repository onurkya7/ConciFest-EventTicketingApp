<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="SanatciEkle.aspx.cs" Inherits="ConciFes.Admin.SanatciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h3 class="page-title">
                       Sanatci Ekleme Sayfası
    </h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
          <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                 <div class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputEmail3">Sanatçı İsmi</label>
                       <asp:TextBox ID="TextIsim" runat="server" CssClass="form-control" placeholder ="Sanatçı İsmi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Sanatçı Soyismi</label>
                      <asp:TextBox ID="TextSoyisim" runat="server" CssClass="form-control" placeholder ="Sanatçı Soyismi"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Sanatçı Türü</label>
                      <asp:TextBox ID="TextTur" runat="server" CssClass="form-control" placeholder ="Sanatçı Türü"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Sanatçı Kanalı</label>
                      <asp:TextBox ID="TextKanal" runat="server" CssClass="form-control" placeholder ="Sanatçı Kanalı"></asp:TextBox>
                    </div>
                   <div class="form-group">
                      <label>Resim</label>
                      <input type="file" name="img[]" class="file-upload-default">
                      <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info"/>
                        <asp:Button ID="Button2" runat="server" Text="Resim Yükle" CssClass="btn btn-gradient-primary mr-2" OnClick="Button2_Click"/>
                    </div>
                    <div class="form-group">
                      <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                    </div>
                      <br />
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click"/>
                  </div>
                </div>
              </div>
            </div>           
</asp:Content>