<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Dashmaster.master" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
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
                            <p style="color:white; font-size:20px; padding-left:40px;">Welcome Admin</p>
                        </li>
                        <li class="active">
                            <a href="Admin.aspx"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                        </li>

                         <li>
                            <a href="Insertdiet.aspx"><i class="fa fa-fw fa-th-list"></i>Update Diet Plan</a>
                        </li>
                        <li>
                            <a href="UpdateSchdule.aspx"><i class="fa fa-fw fa-table"></i>Update Schedule</a>
                        </li>

                        <li>
                            <a href="gallery.aspx"><i class="fa fa-fw fa-picture-o"></i>Update Gallery</a>
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
                                    Dashboard (Overview)
                                </h1>
                                
                            </div>
                        </div>
                        <!-- /.row -->
                        <br /><br /><br /><br />
                        <div>  
                <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false" CssClass="gridview" OnRowDeleting="gv1_RowDeleting" OnPageIndexChanging="gv1_PageIndexChanging" PageSize="3" AllowPaging="true">
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Left" CssClass="pager" />  
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
                        <asp:BoundField ItemStyle-Width="150px" HeaderStyle-CssClass="hdrow" DataField="Username" HeaderText="Username" />
                        <asp:BoundField ItemStyle-Width="150px" HeaderStyle-CssClass="hdrow" DataField="Email" HeaderText="Email Id" />
                        <asp:BoundField ItemStyle-Width="150px" HeaderStyle-CssClass="hdrow" DataField="Phonenumber" HeaderText="Mobile" />
                        <asp:TemplateField>  
                            <HeaderStyle CssClass="hdrow" />  
                            <HeaderTemplate>  
                                <asp:Label ID="hlblimg" runat="server" Text="Diet Plan"></asp:Label>  
                            </HeaderTemplate>  
                            <ItemTemplate>  
                                <asp:Image ID="img1" runat="server" ImageUrl='  
                                    <%# "~/Images/"+Eval("DietPlan") %>' Height="100px" Width="100px" />  
                                </ItemTemplate>  

                            </asp:TemplateField> 
                        <asp:TemplateField>  
                            <HeaderStyle CssClass="hdrow" />  
                            <HeaderTemplate>  
                                <asp:Label ID="Label1" runat="server" Text="Schedule"></asp:Label>  
                            </HeaderTemplate>  
                            <ItemTemplate>  
                                <asp:Image ID="Image1" runat="server" ImageUrl='  
                                    <%# "~/Images/"+Eval("Schedule") %>' Height="100px" Width="100px" />  
                                </ItemTemplate>  

                            </asp:TemplateField> 
                            <asp:TemplateField>  
                                <HeaderStyle CssClass="hdrow" />  
                                <ItemTemplate>  
                              
                                    <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="Delete" />  
                                </ItemTemplate>  
                                <EditItemTemplate>  
 
                                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" />  
                                </EditItemTemplate>  
                            </asp:TemplateField>  
                        </Columns>  
                  </asp:GridView>  
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

    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

    <footer class="container-fluid text-center" >
            <p><span class="colored">Pulse Fitness</span> © 2017. All Rights Reserved.</p>
        </footer>

    </asp:Content>