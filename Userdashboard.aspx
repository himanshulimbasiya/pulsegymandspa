<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Dashmaster.master" CodeFile="Userdashboard.aspx.cs" Inherits="Userdashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>SB Admin - Bootstrap Admin Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet"/>
    <link href="css/masterstyle.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/member.css" />

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>  
        .hdrow {  
        text-align:center;  
        color:White;  
        background-color:midnightblue;  
        height:30px;  
        }  
        .gridview  
        {  
        width:50%;  
        background-color:white;  
        margin:0px auto;  
        }  

        .pager span { color:#009900;font-weight:bold; font-size:16pt;}
        </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" runat="server" id="checklinkk"></a>
                    <ul class="dropdown-menu">
                        
                        <li>
                            <a href="Logout.aspx"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">

                    <ul class="nav navbar-nav side-nav">
                        <li>
                            <div align="center">
                   
                            <img style= "width:150px; height:100px; padding-left:50px;" src="/images/image1.png" class="roundedcorners" />
                        </div>
                        </li>
                        <li>
                            <p style="color:white; font-size:20px; padding-left:40px;">Welcome <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
                        </li>
                        <li class="active">
                            <a href="#"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="Mydiet.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> My Dietchart</a>
                        </li>
                        <li>
                            <a href="Myschedule.aspx"><i class="fa fa-fw fa-table"></i> My Schedule</a>
                        </li>
                        <li>
                            <a href="Compare.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> Compare Plans</a>
                        </li>
                        <li>
                            <a href="Buymembership.aspx"><i class="fa fa-fw fa-edit"></i> Buy Membership</a>
                        </li>
                    </ul>
                </div>
            </nav>

                <div id="page-wrapper">
                    <div class="container-fluid">
                        <!-- Page Heading -->
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Dashboard 
                                </h1>
                                
                            </div>
                        </div>
                        <!-- /.row -->
                        <div>  
                                    <br /><br /><br /><br />
                <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false" OnRowEditing="gv1_RowEditing" OnRowUpdating="gv1_RowUpdating" OnRowCancelingEdit="gv1_RowCancelingEdit" OnRowDeleting="gv1_RowDeleting" CssClass="gridview" OnPageIndexChanging="gv1_PageIndexChanging" PageSize="3" AllowPaging="true">  
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" CssClass="pager" />
                    <Columns>  
                        <asp:TemplateField>  
                            <HeaderStyle CssClass="hdrow" />  
                            <HeaderTemplate>  
                                <asp:Label ID="hlbleid" runat="server" Text="UserId"></asp:Label>  
                            </HeaderTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lbleid" runat="server" Text='<%# Eval("UserId") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                        </asp:TemplateField>  
                        <asp:TemplateField>  
                            <HeaderStyle CssClass="hdrow" />  
                            <HeaderTemplate>  
                                <asp:Label ID="hlblename" runat="server" Text="Username"></asp:Label>  
                            </HeaderTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lblename" runat="server" Text='<%# Eval("Username") %>'>  
                                </asp:Label>  
                            </ItemTemplate>    
                        </asp:TemplateField>    
                         <asp:TemplateField>  
                            <HeaderStyle CssClass="hdrow" />  
                            <HeaderTemplate>  
                                <asp:Label ID="hlblemid" runat="server" Text="Email"></asp:Label>  
                            </HeaderTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lblemid" runat="server" Text='<%# Eval("Email") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtemid" runat="server" Text='<%# Eval("Email") %>'>  
                                </asp:TextBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>
                        <asp:TemplateField>  
                            <HeaderStyle CssClass="hdrow" />  
                            <HeaderTemplate>  
                                <asp:Label ID="hempnumber" runat="server" Text="Phonenumber"></asp:Label>  
                            </HeaderTemplate>  
                            <ItemTemplate>  
                                <asp:Label ID="lblmnumber" runat="server" Text='<%# Eval("Phonenumber") %>'>  
                                </asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txtmnumber" runat="server" Text='<%# Eval("Phonenumber") %>'>  
                                </asp:TextBox>  
                            </EditItemTemplate>  
                        </asp:TemplateField>
                        <asp:TemplateField>  
                                <HeaderStyle CssClass="hdrow" />  
                                <ItemTemplate>  
                                    <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="Edit" />   
                                </ItemTemplate>  
                                <EditItemTemplate>  
                                    <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="Update" />    
                                </EditItemTemplate>  
                            </asp:TemplateField>  
                    </Columns>  
                  </asp:GridView>  
              </div>  
                        
                     
                          </div>  
                           
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /#page-wrapper -->

    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

    <br /><br />

<footer class="container-fluid text-center" style="margin-top:350px;" >
            <p><span class="colored">Pulse Fitness</span> © 2017. All Rights Reserved.</p>
        </footer>

    </asp:Content>