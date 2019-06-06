<%@ Page Title="" Language="C#" MasterPageFile="~/merchant/merchant.master" AutoEventWireup="true" CodeFile="spam.aspx.cs" Inherits="merchant_spam" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="../sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <script type="text/javascript" >

            function success() {
                swal({
                    title: "Removed Spam",
                    text: "Reviews!",
                    icon: "success",
                    button: "OK",
                });
            }
          
        </script>
    <asp:Panel ID="Panel1" runat="server" Height="400px" ScrollBars="Vertical" style="    margin-top: -48px;" >

     <br />
        <br />
    

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
        <HeaderStyle BackColor="#117a8b" Font-Bold="True" ForeColor="White" height="47px" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
         <asp:GridView ID="GridView2" style="        margin-left: 4px;
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
        <HeaderStyle BackColor="#117a8b" Font-Bold="True" ForeColor="White" height="47px" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
          <asp:GridView ID="GridView3" style="        margin-left: 4px;
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
        <HeaderStyle BackColor="#117a8b" Font-Bold="True" ForeColor="White" height="47px" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
         <asp:GridView ID="GridView4" style="        margin-left: 4px;
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
        <HeaderStyle BackColor="#117a8b" Font-Bold="True" ForeColor="White" height="47px" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
               <asp:GridView ID="GridView5" style="        margin-left: 4px;
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
        <HeaderStyle BackColor="#117a8b" Font-Bold="True" ForeColor="White" height="47px" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
           <div>
        <asp:Chart ID="Chart1" runat="server" Width="804px" Height="368px" style="    margin-left: 318px;"  EnableTheming="True">
    <Titles>
        <asp:Title ShadowOffset="3" Name="Items" IsDockedInsideChartArea="False" />
    </Titles>
    <Legends>
        <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default"
            LegendStyle="Row" />
    </Legends>
    <Series>
        <asp:Series Name="Default" ChartType="Pie" />
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1" BorderWidth="0" />
    </ChartAreas>
</asp:Chart>
    </div>
          <div>
        <asp:Chart ID="Chart2" runat="server" Width="804px" Height="368px" style="     margin-top: -403px;   margin-left: 318px;"  EnableTheming="True" Palette="Chocolate">
    <Titles>
        <asp:Title ShadowOffset="3" Name="Items" IsDockedInsideChartArea="False" />
    </Titles>
    <Legends>
        <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default"
            LegendStyle="Row" />
    </Legends>
    <Series>
        <asp:Series Name="Default" ChartType="Spline" YValuesPerPoint="2" />
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1" BorderWidth="0" />
    </ChartAreas>
</asp:Chart>
    </div>
        </asp:Panel>
     <asp:Button ID="Button1" runat="server" Text="Spam Filter" style="    margin-left: 652px;"  class="btn btn-primary submit mt-2 read-more" OnClick="Button1_Click"  />
     <asp:Button ID="Button2" runat="server" Text="Early Reviewers" style="    margin-left: 262px;"  class="btn btn-primary submit mt-2 read-more" OnClick="Button2_Click"  />
     <asp:Button ID="Button3" runat="server" Text="Majority " style="    margin-left: 249px;"  class="btn btn-primary submit mt-2 read-more" OnClick="Button3_Click"   />
     <asp:Button ID="Button4" runat="server" Text="Laggards" style="    margin-left: 367px;"  class="btn btn-primary submit mt-2 read-more" OnClick="Button4_Click"   />
     <asp:Button ID="Button5" runat="server" Text="Analysis" style="    margin-left: 367px;"  class="btn btn-primary submit mt-2 read-more" OnClick="Button5_Click"   />
     <asp:Button ID="Button6" runat="server" Text="Review Analysis" style="    margin-left: 367px;"  class="btn btn-primary submit mt-2 read-more" OnClick="Button6_Click"   />


</asp:Content>

