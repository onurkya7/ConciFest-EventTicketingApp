<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PaketDuzenle.aspx.cs" Inherits="ConciFes.Admin.PaketSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <h3 class="page-title">
                        Paket Düzenle/Sil Sayfası
    </h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
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
    <asp:GridView ID="GridView1"  CssClass="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Isim" HeaderText="Isim" SortExpression="Isim" />
            <asp:BoundField DataField="Fiyat" HeaderText="Fiyat" SortExpression="Fiyat" />
            <asp:BoundField DataField="Paket1" HeaderText="Paket1" SortExpression="Paket1" />
            <asp:BoundField DataField="Paket2" HeaderText="Paket2" SortExpression="Paket2" />
            <asp:BoundField DataField="Paket3" HeaderText="Paket3" SortExpression="Paket3" />
            <asp:BoundField DataField="Paket4" HeaderText="Paket4" SortExpression="Paket4" />
        </Columns>
        </asp:GridView>

    </div>
</asp:Content>
