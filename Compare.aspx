<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Dashmaster.master" CodeFile="Compare.aspx.cs" Inherits="Compare" %>

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
        .drop{
            margin-left:100px;
        }
                .drop2{
            margin-left:350px;
        }
                .drop3{
            margin-left:100px;
        }
                .bttnup
        {
                background-color: #286090;
                border: none;
                color: white;
                padding: 10px 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 10px;
                margin-left:515px;
        }
                .img1
        {
                    margin-left:100px;
        }
                .img2
        {
                    margin-left:300px;
        }
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
                        <li>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Button1_Click"><i class="fa fa-fw fa-dashboard"></i>Dashboard</asp:LinkButton>
                        </li>
                        <li>
                            <a href="Mydiet.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> My Dietchart</a>
                        </li>
                        <li>
                            <a href="Myschedule.aspx"><i class="fa fa-fw fa-table"></i> My Schedule</a>
                        </li>
                        <li class="active">
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
                                    Compare Plans
                                </h1>
                                
                            </div>
                        </div>
                        <!-- /.row -->
                        <div class="container">
    </div>        
           
                          <div class="container">
   <div class="row text-center">

    </div>        
           
                              <br /><br />
                              <p class="h-desc gray4" style="text-align:center; font-size:30px;"><b>COMPARE PLANS</b><br /><br />
                              </p>
                             <asp:DropDownList ID="DropDownList1" CssClass="drop2" runat="server">
                                  <asp:ListItem Text="Select Plan" Value="0"></asp:ListItem>
                                  <asp:ListItem Text="Basic" Value="basic"></asp:ListItem>
                                  <asp:ListItem Text="Special" Value="special"></asp:ListItem>
                                  <asp:ListItem Text="Advance" Value="advance"></asp:ListItem>
                                  <asp:ListItem Text="Extended" Value="extended"></asp:ListItem>
                              </asp:DropDownList> <asp:Label ID="Label2" runat="server" Text="VS" CssClass="drop3"></asp:Label>
                              <asp:DropDownList ID="DropDownList2" CssClass="drop" runat="server">
                                  <asp:ListItem Text="Select Plan" Value="0"></asp:ListItem>
                                  <asp:ListItem Text="Basic" Value="basic"></asp:ListItem>
                                  <asp:ListItem Text="Special" Value="special"></asp:ListItem>
                                  <asp:ListItem Text="Advance" Value="advance"></asp:ListItem>
                                  <asp:ListItem Text="Extended" Value="extended"></asp:ListItem>
                              </asp:DropDownList>
                              <br /><br />
                              <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="bttnup" Text="Compare"></asp:Button>
                              <br /><br /><br />
                              <asp:Image ID="Image1" runat="server" Visible="False" CssClass="img1" Height="500px" Width="350px"></asp:Image>
                              <asp:Image ID="Image2" runat="server" CssClass="img2" Visible="False" Height="500px" Width="350px"></asp:Image>
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

<footer class="container-fluid text-center" style="margin-top:400px;">
            <p><span class="colored">Pulse Fitness</span> © 2017. All Rights Reserved.</p>
        </footer>

    </asp:Content>