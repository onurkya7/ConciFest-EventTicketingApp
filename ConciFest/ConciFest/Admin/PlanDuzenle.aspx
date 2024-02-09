<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PlanDuzenle.aspx.cs" Inherits="ConciFes.Admin.PlanDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <h3 class="page-title">
                       Plan Düzenle/Sil Sayfası
    </h3>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConciFestConnectionString %>" DeleteCommand="DELETE FROM [tblPlan] WHERE [id] = @id" InsertCommand="INSERT INTO [tblPlan] ([Etkinlik], [Isim], [Soyisim], [Tur], [Sehir], [Konum], [Tarih_gun], [Tarih_ay], [Tarih_yil], [Saat], [Resim]) VALUES (@Etkinlik, @Isim, @Soyisim, @Tur, @Sehir, @Konum, @Tarih_gun, @Tarih_ay, @Tarih_yil, @Saat, @Resim)" SelectCommand="SELECT * FROM [tblPlan]" UpdateCommand="UPDATE [tblPlan] SET [Etkinlik] = @Etkinlik, [Isim] = @Isim, [Soyisim] = @Soyisim, [Tur] = @Tur, [Sehir] = @Sehir, [Konum] = @Konum, [Tarih_gun] = @Tarih_gun, [Tarih_ay] = @Tarih_ay, [Tarih_yil] = @Tarih_yil, [Saat] = @Saat, [Resim] = @Resim WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Etkinlik" Type="String" />
                <asp:Parameter Name="Isim" Type="String" />
                <asp:Parameter Name="Soyisim" Type="String" />
                <asp:Parameter Name="Tur" Type="String" />
                <asp:Parameter Name="Sehir" Type="String" />
                <asp:Parameter Name="Konum" Type="String" />
                <asp:Parameter Name="Tarih_gun" Type="Int32" />
                <asp:Parameter Name="Tarih_ay" Type="String" />
                <asp:Parameter Name="Tarih_yil" Type="Int64" />
                <asp:Parameter Name="Saat" Type="String" />
                <asp:Parameter Name="Resim" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Etkinlik" Type="String" />
                <asp:Parameter Name="Isim" Type="String" />
                <asp:Parameter Name="Soyisim" Type="String" />
                <asp:Parameter Name="Tur" Type="String" />
                <asp:Parameter Name="Sehir" Type="String" />
                <asp:Parameter Name="Konum" Type="String" />
                <asp:Parameter Name="Tarih_gun" Type="Int32" />
                <asp:Parameter Name="Tarih_ay" Type="String" />
                <asp:Parameter Name="Tarih_yil" Type="Int64" />
                <asp:Parameter Name="Saat" Type="String" />
                <asp:Parameter Name="Resim" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-borderless" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Etkinlik" HeaderText="Etkinlik" SortExpression="Etkinlik" />
                <asp:BoundField DataField="Isim" HeaderText="Isim" SortExpression="Isim" />
                <asp:BoundField DataField="Soyisim" HeaderText="Soyisim" SortExpression="Soyisim" />
                <asp:BoundField DataField="Tur" HeaderText="Tur" SortExpression="Tur" />
                <asp:BoundField DataField="Sehir" HeaderText="Sehir" SortExpression="Sehir" />
                <asp:BoundField DataField="Konum" HeaderText="Konum" SortExpression="Konum" />
                <asp:BoundField DataField="Tarih_gun" HeaderText="Tarih_gun" SortExpression="Tarih_gun" />
                <asp:BoundField DataField="Tarih_ay" HeaderText="Tarih_ay" SortExpression="Tarih_ay" />
                <asp:BoundField DataField="Tarih_yil" HeaderText="Tarih_yil" SortExpression="Tarih_yil" />
                <asp:BoundField DataField="Saat" HeaderText="Saat" SortExpression="Saat" />
                <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
            </Columns>
        </asp:GridView>
</div>
</asp:Content>
