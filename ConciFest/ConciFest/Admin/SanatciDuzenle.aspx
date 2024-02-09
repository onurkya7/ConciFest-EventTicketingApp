<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="SanatciDuzenle.aspx.cs" Inherits="ConciFes.Admin.SanatciDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h3 class="page-title">
                       Sanatci Düzenle/Sil Sayfası
    </h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConciFestConnectionString %>" DeleteCommand="DELETE FROM [tblSanatci] WHERE [id] = @id" InsertCommand="INSERT INTO [tblSanatci] ([Isim], [Soyisim], [Tur], [Kanal], [Resim]) VALUES (@Isim, @Soyisim, @Tur, @Kanal, @Resim)" SelectCommand="SELECT * FROM [tblSanatci]" UpdateCommand="UPDATE [tblSanatci] SET [Isim] = @Isim, [Soyisim] = @Soyisim, [Tur] = @Tur, [Kanal] = @Kanal, [Resim] = @Resim WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Isim" Type="String" />
            <asp:Parameter Name="Soyisim" Type="String" />
            <asp:Parameter Name="Tur" Type="String" />
            <asp:Parameter Name="Kanal" Type="String" />
            <asp:Parameter Name="Resim" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Isim" Type="String" />
            <asp:Parameter Name="Soyisim" Type="String" />
            <asp:Parameter Name="Tur" Type="String" />
            <asp:Parameter Name="Kanal" Type="String" />
            <asp:Parameter Name="Resim" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" CssClass="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Isim" HeaderText="Isim" SortExpression="Isim" />
            <asp:BoundField DataField="Soyisim" HeaderText="Soyisim" SortExpression="Soyisim" />
            <asp:BoundField DataField="Tur" HeaderText="Tur" SortExpression="Tur" />
            <asp:BoundField DataField="Kanal" HeaderText="Kanal" SortExpression="Kanal" />
            <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
        </Columns>
    </asp:GridView>
      </div>
</asp:Content>
