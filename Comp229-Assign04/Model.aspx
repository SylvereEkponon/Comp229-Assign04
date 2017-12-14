<%@ Page Title="Model" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Model.aspx.cs" Inherits="Comp229_Assign04.Model" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="col-md-offset-1 col-md-8 ">
            <asp:GridView ID="modelGridView" runat="server" AutoGenerateColumns="false" DataKeyNames="Name" CssClass="table table-hover" OnRowDeleting="modelGridView_RowDeleting">
                <Columns>
                    <asp:HyperLinkField Text="Edit" runat="server" ControlStyle-CssClass="btn btn-primary btn-group-sm" DataNavigateUrlFields="Name" DataNavigateUrlFormatString="Update.aspx?Name={0}" />
                    <asp:CommandField DeleteText="<i class='fa fa-trash-o fa-sm'></i> Delete"
                        ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                    <asp:BoundField DataField="Name" HeaderText="Name" Visible="true" ReadOnly="true" />
                    <asp:BoundField DataField="Faction" HeaderText="Faction" Visible="true" />
                    <asp:BoundField DataField="Rank" HeaderText="Rank" Visible="true" />
                    <asp:BoundField DataField="Base" HeaderText="Base" Visible="true" />
                    <asp:BoundField DataField="Size" HeaderText="Size" Visible="true" />
                    <asp:BoundField DataField="Mobility" HeaderText="Mobility" Visible="true" />
                    <asp:BoundField DataField="Willpower" HeaderText="Willpower" Visible="true" />
                    <asp:BoundField DataField="Resiliance" HeaderText="Resiliance" Visible="true" />
                    <asp:BoundField DataField="Wounds" HeaderText="Wounds" Visible="true" />
                    <asp:ImageField DataImageUrlField="ImageUrl" ControlStyle-Width="250px" ControlStyle-Height="250px" HeaderText="Image"></asp:ImageField>
                </Columns>
            </asp:GridView>
            <a class="btn btn-primary btn-lg" href="Default.aspx">Back to Home</a>
        </div>
    </div>

</asp:Content>
