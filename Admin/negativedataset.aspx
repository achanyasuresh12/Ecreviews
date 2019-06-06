<%@ Page Title="" Language="C#" EnableEventValidation="false" MasterPageFile="~/Admin/Admin1.master" AutoEventWireup="true" CodeFile="negativedataset.aspx.cs" Inherits="Admin_negativedataset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="login px-sm-4 mx-auto mw-100 login-wrapper" style="    width: 449px;">
                <form class="login-wrapper w3pvt_mail_grid_right" action="#" method="post">
                    <div class="form-group">
                        <label>Upload Dataset</label>
                        <%--<input class="form-control" type="text" name="Name" placeholder="" required="">--%>
                        <asp:FileUpload ID="FileUpload1"  class="form-control" type="text"  runat="server" required="" />
                    </div>

                

                    <asp:Button ID="Button1" class="btn btn-primary submit mt-2 read-more" type="submit" runat="server" Text="Submit" OnClick="Button1_Click" />
                    <p class="text-center mt-4">
                     

                    </p>
                </form>
            </div>
</asp:Content>

