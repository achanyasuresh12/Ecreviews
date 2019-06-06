<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin1.master" AutoEventWireup="true" CodeFile="reviews.aspx.cs" Inherits="Admin_reviews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <asp:GridView ID="GridView1" style="        margin-left: 4px;
    margin-top: -47px;" runat="server" AutoGenerateColumns="False" CellPadding="3" Width="1494px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="254px" >
        <Columns>
            <asp:TemplateField HeaderText="No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                     <asp:Label ID="Label5" runat="server" Text='<%# Container.DataItemIndex + 1 %>' Font-Bold="True"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:BoundField DataField="reviews" HeaderText="Reviews" />
            <asp:BoundField DataField="date" HeaderText="Date"  DataFormatString="{0:dd/MM/yyyy}" />
             <asp:BoundField DataField="rating" HeaderText="Rating" />
            <asp:BoundField DataField="reviewer" HeaderText="Reviewer" />

          
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#dc3545" Font-Bold="True" ForeColor="White" height="47px" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
</asp:Content>

