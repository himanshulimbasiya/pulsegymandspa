<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewgallery.aspx.cs" Inherits="viewgallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="content/bootstrap.css" rel="stylesheet" />
    <link href="CSS/masterstyle.css" rel="stylesheet" />
    <link href="CSS/homestyle.css" rel="stylesheet" />
    <style>
        .gall{
            border-radius:10px;
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
</head>
<body>
    <form id="form1" runat="server">
    <!-- Navigation -->
	<nav id="navigation" class="dark-nav">
		<!-- Navigation Inner -->
		<div class="nav-inner">
			<!-- Site Logo -->
			<div class="site-logo fancy">
			    <a href="Home.aspx" id="logo-text" class="scroll logo"><img src="images/gymlogo.png" height= "190" width="190" alt="logo"></a>
			</div><!-- End Site Logo -->
			<a class="mini-nav-button gray2"><i class="fa fa-bars"></i></a>
			<!-- Navigation Menu -->
		    <div class="nav-menu">
				<ul class="nav uppercase">
					<li><a href="Home.aspx" class="scroll">Home</a></li>       
                    <li><a runat="server" id="checklink1" href="Login.aspx">Login</a></li>
                    <li><a runat="server" id="checklink2" href="SignUp.aspx">Sign Up</a></li>
				</ul>
		  </div><!-- End Navigation Menu -->
		</div><!-- End Navigation Inner -->
	</nav><!-- End Navigation Section -->

        <div class="container-fluid text-center container-main">
            <div class="row content">
                                        <br /><br /><br /><br />
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>

                            <div class="col-md-4">
                                <div style="margin-bottom:50px">
                                            <asp:Image runat="server"  ImageUrl='  
                                                    <%# "~/Uploads/"+Eval("IMAGES") %>' Height="400px" Width="430px" CssClass="gall" ></asp:Image>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
<footer class="container-fluid text-center" >
            <p><span class="colored">Pulse Fitness</span> © 2017. All Rights Reserved.</p>
        </footer>
    </form>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
</body>
</html>
