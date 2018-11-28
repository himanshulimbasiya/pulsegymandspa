<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid text-center container-main-login-signup">
        <div class="row content">
            
            <div class="col-md-4 text-left">
                </div>
                
            <div class="col-md-4 text-left">
            <div class=" col-md-4"></div>
            <div class="container col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading text-center">
                        <h3 class="formtxt">Register</h3>
                    </div>
                    <div class="panel panel-body">
                        <div class="form-group form-horizontal">
                            <label class="sr-only">Username:</label>
                            <div class="form-inline">
                            <asp:TextBox ID="TName" Width="100%" placeholder="User Name" runat="server" CssClass="txtbox" ></asp:TextBox>
                            <asp:label ID="label2" runat="server" text="Label" cssclass="sr-only" Visible="True"></asp:label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TName" ForeColor="Red" Font-Bold="True" Font-Size="Large" ToolTip="Required Field"></asp:RequiredFieldValidator>

                        </div>
                            </div>
                        <div class="form-group">
                            <label class="sr-only">Email:</label>
                            <div class="form-inline">
                            <asp:TextBox ID="TMail" placeholder="Email" Width="100%" runat="server" CssClass="txtbox" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TMail" Font-Bold="True" ForeColor="Red" Font-Size="Large" ToolTip="Required Field"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TMail" Font-Bold="true" Font-Size="Large" ForeColor="Red" ToolTip="Invalid format"></asp:RegularExpressionValidator>
                        </div>
                        </div>
                        <div class="form-group">
                            <label class="sr-only">Password:</label>
                            <div class="form-inline">
                            <asp:TextBox ID="TPass" placeholder="Password" Width="100%" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TPass" Font-Bold="True" ForeColor="Red" Font-Size="Large" ToolTip="Required field"></asp:RequiredFieldValidator>
                        </div>
                            </div>
                        <div class="form-group">
                            <label class="sr-only">Confirm Password:</label>
                            <div class="form-inline">
                            <asp:TextBox ID="TPassConfirm" Width="100%" placeholder="Confirm Password" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TPassConfirm" Font-Bold="True" Font-Size="Large" ForeColor="Red" ToolTip="Required field"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" ControlToCompare="TPass" ControlToValidate="TPassConfirm" ForeColor="Red" Font-Bold="true" Font-Size="Large" ToolTip="Passwords don't match"></asp:CompareValidator>
                        </div>
                            </div>
                        <div class="form-group">
                            <label class="sr-only">Phone Number:</label>
                            <asp:TextBox ID="TPhone" Width="100%" placeholder="Phone Number" runat="server" CssClass="txtbox" TextMode="Number" MaxLength="10"></asp:TextBox>

                        </div>
                        <asp:Button ID="Button1" runat="server" CssClass="formbtton" Width="100%" Text="Sign me up!" OnClick="Button1_Click" />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="loginp text-center">By signing up, you agree to our terms of use, privacy policy, and cookie policy.</asp:Label>
                    </div>
                    <div class="panel-footer">
                        <p style="font-size: large" class="formtxt">Already have an account?<a href="Login.aspx"> Sign In</a></p>
                    </div>
                </div>

                <br />

            </div>
        </div>
        </div>
    </div>
</asp:Content>

