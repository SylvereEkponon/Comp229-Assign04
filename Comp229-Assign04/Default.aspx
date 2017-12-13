<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-md-offset-3 col-md-6">
                            <a href="AddModel.aspx" class="btn btn-success btn-sm">
                    <i class="fa fa-plus"></i>Add New Model
                </a>
            <asp:GridView ID="allObjectGridView" CssClass="table table-bordered table-hover table-stripped" runat="server" AutoGenerateColumns="False">
                <Columns>

                    <asp:HyperLinkField DataTextField="Name" DataNavigateUrlFields="Name" DataNavigateUrlFormatString="Model.aspx?Name={0}" HeaderText="Model Name" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
