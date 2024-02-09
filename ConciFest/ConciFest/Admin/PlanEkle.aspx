<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PlanEkle.aspx.cs" Inherits="ConciFes.Admin.PlanEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h3 class="page-title">
                        Plan Ekleme Sayfası
    </h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName1">Etkinlik</label>
                        <asp:TextBox ID="TextEtkinlik" runat="server" CssClass="form-control" placeholder ="Etkinlik"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">İsim</label>
                       <asp:TextBox ID="TextIsim" runat="server" CssClass="form-control" placeholder ="İsim"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputEmail3">Soyisim</label>
                       <asp:TextBox ID="TextSoyisim" runat="server" CssClass="form-control" placeholder ="İsim"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Tur</label>
                      <asp:TextBox ID="TextTur" runat="server" CssClass="form-control" placeholder ="Tur"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Sehır</label>
                      <asp:TextBox ID="TextSehir" runat="server" CssClass="form-control" placeholder ="Sehır"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Konum</label>
                      <asp:TextBox ID="TextKonum" runat="server" CssClass="form-control" placeholder ="Konum"></asp:TextBox>
                    </div>
                      <h2 style="font-size: 16px">Tarih Seçimi</h2>
                    <div class="form-group" style="display:inline-block;">
                      <label for="exampleInputPassword4">Gün</label>
                      <asp:TextBox ID="TextGun" runat="server" CssClass="form-control" placeholder ="Gün"></asp:TextBox>
                    </div>
                    <div class="form-group" style="display:inline-block;">
                      <label for="exampleInputPassword4">Ay</label>
                      <asp:TextBox ID="TextAy" runat="server" CssClass="form-control" placeholder ="Ay"></asp:TextBox>
                    </div>
                      <div class="form-group" style="display:inline-block;">
                      <label for="exampleInputPassword4">Yıl</label>
                      <asp:TextBox ID="TextYıl" runat="server" CssClass="form-control" placeholder ="Yıl"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputPassword4">Saat</label>
                      <asp:TextBox ID="TextSaat" runat="server" CssClass="form-control" placeholder ="Saat"></asp:TextBox>
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
