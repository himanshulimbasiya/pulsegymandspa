<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Dashmaster.master" CodeFile="Buymembership.aspx.cs" Inherits="Buymembership" %>

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
                         <li>
                            <a href="Compare.aspx"><i class="fa fa-fw fa-bar-chart-o"></i> Compare Plans</a>
                        </li>
                        <li class="active">
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
                                    Membership Plans
                                </h1>
                                
                            </div>
                        </div>
                        <!-- /.row -->
                        <div class="container">
    </div>        
           
                          <div class="container">
   <div class="row text-center">

    </div>        
           
  
                 <div class="row db-padding-btm db-attached">
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                <div class="db-wrapper">
                    <div class="db-pricing-eleven db-bk-color-one">
                        <div class="price">
                            <sup>Rs</sup>1000
                                <small>per month</small>
                        </div>
                        <div class="type">
                            BASIC <br />PLAN
                        </div>
                        <ul>

                            <li>Rs 1000 for a month </li>
                            <li>Free Bhangra Classes</li>
                            <li><br /></li>
                            <li><br /></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                  <div class="db-wrapper">
                <div class="db-pricing-eleven db-bk-color-two popular">
                    <div class="price">
                        <sup>Rs</sup>3000
                                <small>per quarter</small>
                    </div>
                    <div class="type">
                        SPECIAL<br /> PLAN
                    </div>
                    <ul>

                        <li>Rs 750 for a month</li>
                        <li> Free Bhangra Classes</li>
                        <li>steam bath and shower complimentry</li>
                        <li><br /></li>
                    </ul>
                </div>
                      </div>
            </div>
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                  <div class="db-wrapper">
                <div class="db-pricing-eleven db-bk-color-three">
                    <div class="price">
                        <sup>Rs</sup>4500
                                <small>half yearly</small>
                    </div>
                    <div class="type">
                        ADVANCE PLAN
                    </div>
                    <ul>

                        <li>Rs 650 for a month</li>
                        <li>Free Bhangra Classes</li>
                        <li>steam bath and shower complimentry</li>
                        <li>one month free</li>

                    </ul>
                </div>
                      </div>
            </div>
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                  <div class="db-wrapper">
                <div class="db-pricing-eleven db-bk-color-six">
                    <div class="price">
                        <sup>Rs</sup>7000
                                <small>yearly</small>
                    </div>
                    <div class="type">
                        EXTENDED PLAN
                    </div>
                    <ul>

                        <li>Rs 500 for a month</li>
                        <li>Free Bhangra Classes</li>
                        <li>steam bath and shower complimentry</li>
                        <li>one month free</li>
                    </ul>
                </div>
                      </div>
            </div>
        </div> 
        <br/>
        <br/>
        <br/>
        <p><h4>To start your body transformation with your favourite plan pay us at:</h4></p>
        <h3>PAYTM: +919910291683</h3>
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

<footer class="container-fluid text-center">
            <p><span class="colored">Pulse Fitness</span> © 2017. All Rights Reserved.</p>
        </footer>

    </asp:Content>