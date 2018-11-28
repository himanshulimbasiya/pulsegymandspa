<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .container-main {
            background-color: #c8c8c8;
            min-height: 2000px;
        }
    </style>  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div class="container-fluid text-center container-main-login-signup">
        <div class="row content">
            
            <div class="col-md-4 text-left">
                </div>
                
            <div class="col-md-4 text-left">
                <br />
                <br />
                <br /><br />
                <div class="cont col-md-4"></div>
                <div class="container col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-heading text-center">
                            <h3 class="formtxt">Log In</h3>
                        </div>
                        <div class="panel panel-body">
                            <div class="form-group">
                                <label class="sr-only">Email:</label>
                                <div class="form-inline">
                                    <asp:TextBox ID="TMail" Width="100%" placeholder="Enter Username or Email" runat="server" CssClass="txtbox" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Font-Size="Large" ControlToValidate="TMail" Font-Bold="True" ForeColor="Red" ToolTip="Required Field" ValidationGroup="VLogin"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="sr-only">Password:</label>
                                <div class="form-inline">
                                    <asp:TextBox ID="TPass" Width="100%" placeholder="Enter Password" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TPass" Font-Size="Large" Font-Bold="True" ForeColor="Red" ToolTip="Required Field" ValidationGroup="VLogin"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <asp:Button ID="Button1" runat="server" CssClass="formbtton" Width="100%" Text="Log me in!" OnClick="Button1_Click" ValidationGroup="VLogin" />
                            <br />
                            <br />
                            <asp:PlaceHolder runat="server" ID="PlaceHolder1">

                            </asp:PlaceHolder>
                            
                        </div>
                        <div class="panel-footer">
                            <p style="font-size: large" class="formtxt">Don't have an account? <a href="SignUp.aspx">Sign Up</a></p>
                        </div>
                    </div>
                    <br />
                </div>
            </div>
        </div>
    </div>

</asp:Content>