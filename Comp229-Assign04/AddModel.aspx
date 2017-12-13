<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddModel.aspx.cs" Inherits="Comp229_Assign04.AddModel" %>

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
                    <asp:DropDownList ID="ddlFaction" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Please choose one" Value="" />
                        <asp:ListItem Text="Teknes" Value="Teknes" />
                        <asp:ListItem Text="Goritsi" Value="Goritsi" />
                        <asp:ListItem Text="Shael Han" Value="Shael Han" />
                        <asp:ListItem Text="Hadross" Value="Hadross" />
                        <asp:ListItem Text="Nasier" Value="Nasier" />
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label>RANK</label>
                    <asp:RadioButtonList runat="server" ID="rblRank" RepeatDirection="Horizontal" Width="200px">
                        <asp:ListItem Text=" One" Value="1" />
                        <asp:ListItem Text=" Two" Value="2" />
                    </asp:RadioButtonList>
                    
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
                    <label>DEPLOYMENT ZONE</label>
                    <asp:RadioButtonList runat="server" ID="rblDeploymentZone" RepeatDirection="Horizontal" Width="200px">
                        <asp:ListItem Text=" A" Value="A" />
                        <asp:ListItem Text=" B" Value="B" />
                        <asp:ListItem Text=" C" Value="C" />
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator runat="server" ID="rfvDeploymentZone" ControlToValidate="rblDeploymentZone"
                        ErrorMessage="required" SetFocusOnError="true" Display="Static" ForeColor="Red" />
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
                    <asp:Button Text="Cancel" ID="CancelButton" runat="server" CssClass="btn btn-warning btn-lg" 
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                    <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" 
                        OnClick="SaveButton_Click" runat="server" />
                </div>

            </div>
        </div>
    </div>
</asp:Content>
