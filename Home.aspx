<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Pulse Fitness</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <!--Favicon -->
	<link rel="icon" type="image/png" href="images/favicon.jpg" />
		
	<!-- CSS Files -->
		
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/animate.min.css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/homestyle.css" />
	<link rel="stylesheet" href="css/font-awesome.css" />
	<link rel="stylesheet" href="css/owl.carousel.css" />
	<link rel="stylesheet" href="css/responsive.css" />
	<link rel="stylesheet" href="css/player/YTPlayer.css" />
	<link href="css/pro-bars.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/member.css" />

    <style>
        .remove_button_css { 
  outline: none;
  padding: 5px; 
  border: 0px; 
  box-sizing: none;
  color:white; 
  background-color: transparent; 
}
    </style>
	

	<!-- End CSS Files -->
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation -->
	<section id="navigation" class="dark-nav">
		<!-- Navigation Inner -->
		<div class="nav-inner">
			<!-- Site Logo -->
			<div class="site-logo fancy">
				<a href="Home.aspx" id="logo-text" class="scroll logo"><img src="images/gymlogo.png" height= "190" width="190" alt="logo"/>
				</a>
			</div><!-- End Site Logo -->
			<a class="mini-nav-button gray2"><i class="fa fa-bars"></i></a>
			<!-- Navigation Menu -->
		    <div class="nav-menu">
				<ul class="nav uppercase">
					<li><a href="#home" class="scroll">Home</a></li>     
					<li><a href="#features" class="scroll">Features</a></li>  
					<li><a href="#clients" class="scroll">Gymnasts</a></li>
                    <li><a href="#testimonial" class="scroll">Packages</a></li>
                    <li><a href="#about" class="scroll">About us</a></li>
					<li><a href="#contact" class="scroll">Contact</a></li>
                    <li><a href="viewgallery.aspx" class="scroll">Gallery</a></li>
                    <li><a runat="server" id="checklink1" href="Login.aspx">Login</a></li>
                    <li><a runat="server" id="checklink2" href="SignUp.aspx">Sign Up</a></li>
				</ul>
		  </div><!-- End Navigation Menu -->
		</div><!-- End Navigation Inner -->
	</section><!-- End Navigation Section -->
        

	<!-- Home Section -->
	<section id="home" class="relative"> 	
		<div id="slides">
			<div class="slides-container relative">
				<!-- Slider Images -->
				<div class="image2"></div>
                <div class="image1"></div>
				<div class="image3"></div>
                <div class="image4"></div>
				 <!-- End Slider Images -->	 
			</div>
			<!-- Slider Controls -->
			<nav class="slides-navigation">
			  <a href="#" class="next"></a>
			  <a href="#" class="prev"></a>
			</nav>
		</div><!-- End Home Slides -->
		<div class="v2 absolute">
			<!-- Auto Typocraphic Texts -->
			<div class="typographic">
            	<!-- Your Logo -->
				<div class="logo">
					<img src="images/gymlogo.png" width="400" alt="Logo" />
				</div>
				<h2 class=" condensed uppercase no-padding no-margin bold gray1">Introducing</h2>
				<h2 class=" condensed uppercase no-padding no-margin bold colored">Pulse Gym and Spa</h2>
				<a href="#about" class="scroll"><i class="arrow-down fa fa-3x fa-angle-double-down"></i></a>
			</div><!--End Auto Typocraphic Texts -->
		</div><!-- End V2 area -->
	</section><!-- End Home Section -->

    
   

<!-- Features -->
	<section id="features" class="container">

		<div class="inner">

			<!-- Header -->
			<h1 class="header light gray1">Features of <span class="colored fancy">Pulse Gym and Spa</span></h1>

			<div class="features-boxes">

				<!-- Box 1 -->
				<div class="col-xs-4 f-box animated" data-animation="fadeIn" data-animation-delay="0">
					<!-- Icon -->
						<img src="images/crd.jpg" height ="200" width = "350">
					<!-- Header -->
					<p class="feature-head"><span class="bold"> CARDIO SESSIONS</span></p>
					<!-- Text -->
					<p class="feature-text "><span class="colored bold"> SWEAT</span><br/>is FAT Crying!</p>
				</div>


				<!-- Box 2 -->
					<div class="col-xs-4 f-box animated" data-animation="fadeIn" data-animation-delay="100">
					<!-- Icon -->
					<img src="images/str.jpg" height ="200" width = "350">
					<!-- Header -->
					<p class="feature-head"><span class="bold"> CROSSFIT TRAINING</span></p>
					<!-- Text -->
					<p class="feature-text "><span class="colored bold">SORE</span> Today<br><span class="colored bold"> STRONG</span> Tomorrow!</p>
				</div>


				<!-- Box 3 -->
			
                <div class="col-xs-4 f-box animated" data-animation="fadeIn" data-animation-delay="200">
					<!-- Icon -->
					<img src="images/crs.jpg" height ="200" width = "350">
					<!-- Header -->
					<p class="feature-head"><span class="bold"> STRENGTH TRAINING</span></p>
					<!-- Text -->
					<p class="feature-text light">It <span class="colored bold"> HURTS</span> now,<br> But one day it will be your<span class="colored bold"> WARM UP!</span></p>
				</div>
				<div class="clear"></div>

                <!-- Box 4 -->
				<div class="col-xs-4 f-box animated" data-animation="fadeIn" data-animation-delay="0">
					<!-- Icon -->
						<img src="images/spa.jpg" height ="200" width = "350">
					<!-- Header -->
					<p class="feature-head"><span class="bold"> SPA</span></p>
					<!-- Text -->
					<p class="feature-text ">Let's <span class="colored bold"> RELAX!</span></p>
				</div>


				<!-- Box 5 -->
				<div class="col-xs-4 f-box animated" data-animation="fadeIn" data-animation-delay="100">
					<!-- Icon -->
						<img src="images/diet.jpg" height ="200" width = "350">
					<!-- Header -->
					<p class="feature-head"><span class="bold"> NUTRITION DIET PLANS</span></p>
					<!-- Text -->
					<p class="feature-text "><span class="colored bold"> EAT</span> Healthy , <span class="colored bold"> STAY</span> Healthy!</p>
				</div>


				<!-- Box 6 -->
				<div class="col-xs-4 f-box animated" data-animation="fadeIn" data-animation-delay="200">
					<!-- Icon -->
					<img src="images/bhr.jpg" height ="200" width = "350">
					<!-- Header -->
					<p class="feature-head"><span class="bold"> BHANGRA CLASSES</span></p>
					<!-- Text -->
					<p class="feature-text light"><span class="colored bold">DANCE</span> like, <br/>No One is watching. </p>
				</div>
				<div class="clear"></div>

			</div><!-- End Features Boxes -->

		</div> <!-- End Features Inner -->

	</section><!-- End Features Section -->
    
	<!-- Clients -->
	<section id="clients" class="container">

		
		<div class="features-boxes">

			<!-- Header -->
            <br/>
			<h1 class="header light gray3 fancy"><span class="colored">Our </span> Gymnasts</h1>

			<!-- Description -->
			<p class="h-desc gray4">We demand the best from our Trainers, so they can demand the Best from you. Our Trainers have to meet high standards of excellence in exercise physiology, nutrition, anatomy, training program development,exercise application, health screening, and fitness assessments. But most importantly, our Trainers excel at applying their knowledge to all walks of life, from atheletes to seniors.</p>

           <!-- Box 1 -->
				<div class="col-xs-4 f-box animated" data-animation="fadeIn" data-animation-delay="100" style="padding-left:300px;">
					<!-- Icon -->
						<img src="images/clients/10.jpg" height ="350" width = "350">
					<!-- Header -->
					<p class="feature-head"><span class="colored bold"> Harmeet Singh Bhatia</span></p>
					<!-- Text -->
					<p class="text-center">Trainer at Pulse Gym and Spa<br>Mr. Delhi Bodybuilding Championship 2015 and 2016<br/>Mr. India Powerlifting Championship 2017</p>
				</div>


				<!-- Box 2 -->
			
                <div class="col-xs-4 f-box animated" data-animation="fadeIn" data-animation-delay="100" style="padding-left:350px;">
					<!-- Icon -->
						<img src="images/clients/13.jpg" height ="350" width = "350">
					<!-- Header -->
					<p class="feature-head"><span class="colored bold"> Dhruv Arora</span></p>
					<!-- Text -->
					<p class="text-center"><h4>Trainer at Pulse Gym and Spa</h4></p>
				</div>
				<div class="clear"></div>
		</div><!-- End Team Inner -->
	</section><!-- End Team Section -->  


	
    
	<!-- Packages -->
	<section id="testimonial" class="testimonials parallax2">

          
  <div class="row db-padding-btm db-attached">
            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
                <div class="db-wrapper">
                    <div class="db-pricing-eleven db-bk-color-one">
                        <div class="price">
                            <sup>Rs</sup>1000
                                <small>per month</small>
                        </div>
                        <div class="type">
                            BASIC PLAN
                        </div>
                        <ul>

                            <li>Rs 1000 for a month </li>
                            <li>Free Bhangra Classes</li>
                            <li><br /></li>
                            <li><br /></li>
                        </ul>
                        <div class="pricing-footer">

                            <a href= "Login.aspx" class="btn db-button-color-square btn-lg">BOOK ORDER</a>
                        </div>
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
                        SPECIAL PLAN
                    </div>
                    <ul>

                        <li>Rs 750 for a month</li>
                        <li> Free Bhangra Classes</li>
                        <li>steam bath and shower complimentry</li>
                        <li><br /></li>
                    </ul>
                    <div class="pricing-footer">

                        <a href="Login.aspx" class="btn db-button-color-square btn-lg">BOOK ORDER</a>
                    </div>
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
                    <div class="pricing-footer">

                        <a href="Login.aspx" class="btn db-button-color-square btn-lg">BOOK ORDER</a>
                    </div>
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
                    <div class="pricing-footer">

                        <a href="Login.aspx" class="btn db-button-color-square btn-lg">BOOK ORDER</a>
                    </div>
                </div>
                      </div>
            </div>
        </div>
        
	</section>

    
     <!-- About -->
        <section id="about" class="container waypoint">
		<div class="inner">        
        
			<!-- Header -->
			<h1 class="header light gray3 fancy"><span class="colored">Know </span>about us</h1>

			<!-- Description -->
			<h2>Convenience + Culture</h2>
            <p class="h-desc gray4">Through Pulse Gym, we help you pull out all the stops that thwart you from actualizing your dream of becoming and staying the fitter you. We know that there’s no ‘one size fits all’ when it comes to exercising, which is why we focus on a tailored approach that is carefully planned considering your body, dietary needs, limitations, and injuries. Our comprehensive fitness packages include strength training, cardio, Zumba, Bhangra, spinning, functional training, personal training, and diet counselling. We take workouts really seriously and for this very reason we impel you to push your fitness limits by providing you the expert guidance of best trainers and top of the line machinery.</p>
		</div><!-- End About Inner -->
	</section>
	<!-- End About Section -->
    

	<!-- Contact Section -->
	<section id="contact" class="container parallax4">
		<!-- Contact Inner -->
		<div class="inner contact">

			<!-- Form Area -->
			<div class="contact-form">
            
            	<h4 class="header light gray3 fancy"><span class="colored">Contact</span> Us</h4>
                <p class="h-desc white">Need some help ?<br />
                Email us or give us a call at <span class="bold colored">+91 9910291683.</span></p>
				<!-- Form -->
				<form id="contact-us" method="post" action="#">
					<!-- Left Inputs -->
					<div class="col-xs-6 animated" data-animation="fadeInLeft" data-animation-delay="300">
						<!-- Name -->
						<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="YourName" ValidationGroup="save" /><br />
                        <asp:TextBox ID="YourName" runat="server" CssClass="form" placeholder="Name"  /><br />
						<!-- Email -->
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="YourEmail" ValidationGroup="save" /><br />
                        <asp:TextBox ID="YourEmail" runat="server" CssClass="form" placeholder="Email" />
                        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23" SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail"  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ValidationGroup="save" /><br />
						<!-- Subject -->
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="YourSubject" ValidationGroup="save" /><br />
                        <asp:TextBox ID="YourSubject" runat="server" CssClass="form" placeholder="Subject" /><br />
					</div><!-- End Left Inputs -->
					<!-- Right Inputs -->
					<div class="col-xs-6 animated" data-animation="fadeInRight" data-animation-delay="400">
						<!-- Message -->
						<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="Comments" ValidationGroup="save" /><br />
                        <asp:TextBox ID="Comments" runat="server" TextMode="MultiLine" Rows="10" Width="400px" CssClass="form textarea" />
					</div><!-- End Right Inputs -->
					<!-- Bottom Submit -->
					<div class="relative fullwidth col-xs-12">
						<!-- Send Button -->
                        <asp:Button ID="Button1" OnClick="Button1_Click1" runat="server" CssClass="btn db-button-color-square btn-lg" Text="SUBMIT"></asp:Button> 
					</div><!-- End Bottom Submit -->
					<!-- Clear -->
					<div class="clear"></div>
				</form>

				<!-- Your Mail Message -->
				<div class="mail-message-area">
					<!-- Message -->
					<div class="alert gray-bg mail-message not-visible-message">
						<strong>Thank You !</strong> Your email has been delivered.
					</div>
				</div>

			</div><!-- End Contact Form Area -->
		</div><!-- End Inner -->
	</section><!-- End Contact Section -->



	<!-- Site Socials and Address -->
	<section id="site-socials" class="no-padding white-bg">
		<div class="site-socials inner no-padding">
			<!-- Socials -->
			<div class="socials animated" data-animation="fadeInLeft" data-animation-delay="400">
				<!-- Facebook -->
				<a href="https://www.facebook.com/pulsegymandspa/" target="_blank" class="social">
					<i class="fa fa-facebook"></i>
				</a>
				
				<!-- Instagram -->
				<a href="https://www.instagram.com/meet_fitness/" target="_blank" class="social">
					<i class="fa fa-instagram"></i>
				</a>
			</div>
			<!-- Adress, Mail -->
			<div class="address socials animated" data-animation="fadeInRight" data-animation-delay="500">
				<!-- Phone Number, Mail -->
				<p><span class="colored">Phone:</span>+91 9910291683  <span class="colored">Email:</span>harmeetsinghbhatia087@gmail.com  <span class="colored">Address:</span>WZ-23,Krishna Nagar, Near CRPF Camp Gate No.2, Tilak Nagar, New Delhi-18</p>
				<!-- Top Button -->
				<a href="#home" class="scroll top-button">
					<i class="fa fa-arrow-circle-up fa-2x"></i>
				</a>
			</div><!-- End Adress, Mail -->
		</div><!-- End Inner -->
	</section><!-- End Site Socials and Address -->



	<!-- Footer -->
	<footer id="footer" class="footer">
		<!-- Copyright -->
		<p class="copyright normal">© 2017 <span class="colored">Pulse Fitness.</span> All Rights Reserved.</p>
	</footer><!-- End Footer -->

	<!-- JS Files -->
	
	
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.appear.js"></script>
	<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="js/modernizr-latest.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/jquery.parallax-1.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.superslides.js"></script>
	<script type="text/javascript" src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/jquery.mb.YTPlayer.js"></script>
	<script type="text/javascript" src="js/jquery.fitvids.js"></script>
	<script type="text/javascript" src="js/jquery.slabtext.js"></script>
	<script type="text/javascript" src="js/plugins.js"></script>

	<script>

  $("a.about-icon").hover(function () {
    $(this).children("i").addClass("fa-spin");
 }, function(){
 	$(this).children("i").removeClass("fa-spin");
 });
        </script>

    </form>
</body>
</html>
