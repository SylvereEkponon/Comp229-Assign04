<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Comp229_Assign04.Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <article id="contactpage">
        <section>
            <h2>CONTACT</h2>
            <div class="row">
                <div class="col-md-8">
                    <div class="form-group">
                        <label for="txtName">YOUR NAME</label>
                        <asp:TextBox ID="txtName" CssClass="form-control" runat="server" TextMode="SingleLine" />
                        <asp:RequiredFieldValidator ID="rfvName" ControlToValidate="txtName" runat="server" Display="Static"
                            SetFocusOnError="true" ErrorMessage="Name is required" ForeColor="Red" />
                    </div>
                    <div class="form-group">
                        <label for="txtSubject">YOUR SUBJECT</label>
                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" TextMode="SingleLine" />
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtSubject"
                            SetFocusOnError="true" ForeColor="Red" ErrorMessage="Subject field is required" Display="Static"/>
                    </div>
                    <div class="form-group">
                        <label for="txtEmail">YOUR EMAIL </label>
                        <asp:TextBox ID="txtEmail" TextMode="Email" runat="server" CssClass="form-control"/>
                        <asp:RequiredFieldValidator id="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email field is required" SetFocusOnError="true" ForeColor="Red" Display="Static"/>
                        <asp:RegularExpressionValidator ID="regexEmail" runat="server" ErrorMessage="Invalid Email!" SetFocusOnError="true" ControlToValidate="txtEmail" ForeColor="Red"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                    </div>

                    <div class="form-group">
                        <label for="txtMessage">YOUR MESSAGE</label>
                        <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" />
                        <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" SetFocusOnError="true"
                            Display="Static" ErrorMessage="Message box should not be emplty" ForeColor="Red" />
                    </div>
                    <a class="btn btn-primary btn-lg" href="Default.aspx" role="button">Send Message</a>
                    
                </div>
                <div class="col-md-4">
                    <p>
                        <span class="jobTitle">Email</span><br />
                        tekponon@my.centennialcollege.ca
                    </p>
                    <p>
                        <span class="jobTitle">Tel</span><br />
                        <a href="tel:+16477735235">647 773 5235</a>
                    </p>
                    <p>
                        <span class="jobTitle">Keep Connected</span><br />
                        <a href="https://www.pinterest.ca/e_sylvere/" class="fa fa-pinterest"></a>
                        <a href="https://www.facebook.com/sylvere.ekponon" class="fa fa-facebook"></a>
                        <a href="https://github.com/SylvereEkponon" class="fa fa-github"></a>
                    </p>
                </div>

            </div>
        </section>

    </article>
</asp:Content>
