<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="ConciFes.Admin.Ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <h3 class="page-title">
                        Site Ayarları İşlem Sayfası
    </h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
          <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <div class="forms-sample">
                    <div class="form-group">
                      <label for="exampleInputName1">E-mail</label>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder ="E-mail"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Telefon</label>
                       <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder ="Telefon"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Github</label>
                      <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder ="Github"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Instagram</label>
                      <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder ="Instagram"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Twitter</label>
                      <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder ="Twitter"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Youtube</label>
                      <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder ="Youtube"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputPassword4">Site Özet</label>
                      <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder ="Site Özet"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label>Logo</label>
                      <input type="file" name="img[]" class="file-upload-default">
                      <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info"/>
                    </div>
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary mr-2"/>
                  </div>
                </div>
              </div>
            </div>           
</asp:Content>
