<%@ Page Title="Update" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229_Assign04.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        
        <div class="row">
            <div class="col-md-offset-4 col-md-4">
                <h1>Create a New Model</h1>
                <div class="form-group">
                    <label for="txtName">MODEL NAME</label>
                    <asp:TextBox ID="txtName" CssClass="form-control" runat="server" TextMode="SingleLine" />
                    <asp:RequiredFieldValidator ID="rfvName" ControlToValidate="txtName" runat="server" Display="Static"
                        SetFocusOnError="true" ErrorMessage="Name is required" ForeColor="Red" />
                </div>
                <div class="form-group">
                    <label>FACTION</label>
                    <asp:TextBox ID="txtFaction" CssClass="form-control" runat="server" TextMode="SingleLine"/>
                </div>
                <div class="form-group">
                    <label>BASE</label>
                    <asp:TextBox ID="txtBase" TextMode="Number" runat="server" CssClass="form-control" />
                    <asp:RangeValidator ControlToValidate="txtBase" ID="RangeValidatorBase" runat="server" MinimumValue="3" MaximumValue="40" Display="Static"
                        SetFocusOnError="true" ForeColor="Red" ErrorMessage="Higher than 3 and lower than 40" />
                </div>
                <div class="form-group">
                    <label>SIZE</label>
                    <asp:TextBox ID="txtSize" TextMode="Number" runat="server" CssClass="form-control" />
                    
                </div>

                <div class="form-group">
                    <label>MOBILITY</label>
                    <asp:TextBox ID="txtMobility" TextMode="Number" runat="server" CssClass="form-control" />
                    
                </div>
                <div class="form-group">
                    <label>WILLPOWER</label>
                    <asp:TextBox ID="txtWillPower" TextMode="Number" runat="server" CssClass="form-control" />
                    
                </div>
                <div class="form-group">
                    <label>RESILIANCE</label>
                    <asp:TextBox ID="txtResiliance" TextMode="Number" runat="server" CssClass="form-control" />
                    
                </div>

                <div class="form-group">
                    <label>WOUNDS</label>
                    <asp:TextBox ID="txtWounds" TextMode="Number" runat="server" CssClass="form-control" />
                    
                </div>
                <div class="text-right">
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server"
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                    <asp:Button Text="Update" ID="UpdateButton" CssClass="btn btn-primary btn-lg" runat="server"
                        OnClick="UpdateButton_Click" />
                    
                </div>

            </div>
        </div>
    </div>

</asp:Content>
