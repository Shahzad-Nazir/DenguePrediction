<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="UpdatedShahbazAhmad.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8"/>
<!-- Set the viewport width to device width for mobile -->
<meta name="viewport" content="width=device-width"/>
<title>Dengue Prediction System</title>
<!-- CSS Files-->
<link rel="stylesheet" href="stylesheets/style.css">

<link rel="stylesheet" href="stylesheets/skins/blue.css">
<!-- skin color -->
<link rel="stylesheet" href="stylesheets/responsive.css">
<!-- IE Fix for HTML5 Tags -->
<!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
  <div id="panel">
	<div class="row">
		<div class="twelve columns">
			<img src="http://www.wowthemes.net/demo/studiofrancesca/images/info.png" class="pics" alt="info">
			<div class="infotext">
		  Web GIS-based Surveillance and Prediction System for Dengue Virus in Punjab Pakistan.
			</div>
		</div>
	</div>
</div>
<p class="slide">
	<a href="#" class="btn-slide"></a>
</p>
<!-- HEADER
================================================== -->
<div class="row">
	<div class="headerlogo four columns">
		<div class="logo">
			<a href="HomePage.aspx.html">
			<h4>Dengue Survillance</h4>
			</a>
		</div>
	</div>
	<div class="headermenu eight columns noleftmarg">
		<nav id="nav-wrap">
		<ul id="main-menu" class="nav-bar sf-menu">
					<li class="current">
			<a href="HomePage.aspx">Home</a>
			</li>
			<li>
			<a href="#">Punjab Survillance</a>
			<ul>
			<li><a href="YearlyAnalysis.aspx">Yearly Analysis</a></li>
				<li><a href="MonthlyAnalysis.aspx">Monthly Analysis</a></li>
				<li><a href="WeeklyAnalysis.aspx">Weekly Analysis</a></li>
			</ul>
			</li>
			<li>
			<a href="#">District Survillance</a>
			<ul>
				<li><a href="YearlyDistrict.aspx">Yearly Analysis</a></li>
				<li><a href="MonthlyDistrict.aspx">Monthly Analysis</a></li>
				<li><a href="WeeklyDistrict.aspx">Weekly Analysis</a></li>
			</ul>
			</li>
			<li>
			<a href="#">Patients</a>
			<ul>
				<li><a href="Predictor.aspx">Predict Patients</a></li>
				<li><a href="AddPatient.aspx">Add Patients</a></li>
                <li><asp:HyperLink ID="updat_patient" runat="server" NavigateUrl="UpdateData.aspx">Update Patient</asp:HyperLink></li>
				<li><asp:HyperLink ID="delete_patient" runat="server" NavigateUrl="DeleteData.aspx">Delete Patient</asp:HyperLink></li>
			</ul>
			</li>
            <li>
			<a href="AboutUs.aspx">About us</a>
			</li>
			<li>
			<a href="ContactUs.aspx">Contact</a>
			</li>
		</ul>
		</nav>
	</div>
</div>
<div class="clear">
</div>
<!-- SUBHEADER
================================================== -->
<div id="subheader">
	<div class="row">
		<div class="twelve columns">
			<p class="left">
				 ABOUT US
			</p>
		</div>
	</div>
</div>
<div class="hr">
</div>
<!-- CONTENT 
================================================== -->
<div class="row">
    <!-- MAIN CONTENT-->
	<div class="eight columns">
	    <!-- Our History-->
		<div class="sectiontitle">
			<h4>Our History</h4>
		</div>
		<p style="text-align:justify">
			 Dengue Fever (DF) is a viral bone break disease that spreads due to the biting of Aedes Aegypti Mosquito during a blood meal. It is also known as a bone-breaking disease due to the condition a patient feels after its infection. The dengue virus belongs to the Flaviviridae family. It is rapidly disseminating disease around the globe. In the last five decades, victims of dengue Fever are increased up to 30times by covering a more geographical area.
		</p>
		<div class="panel" style="text-align:justify">
			<p>
				<b>This Project is developed by <a href="https://ntu.edu.pk/profile.php?facid=24&deptid=8">Shahbaz Ahmad</a> as a module of PhD. research work. This research was supervised by <a href="https://ntu.edu.pk/profile.php?facid=118&deptid=8">Dr. Muhammad Asif</a> (Associate Professor at NTU) and Co-supervised by <a href="https://cfd.nu.edu.pk/faculty/muhammad-shahzad-sarfraz/">Dr.Shahzad Sarfraz</a> (Director at FAST Faisalabad). The basic aim of this project is to Monitor the spread of Dengue in Punjab, Pakistan. It also predicts the possible patients on a specific date. This project can be enhanced further and can be utilized for Dengue Surveillance.</b>
			</p>
			
		</div>
		<p>
			 Our developed dengue prediction system predicts the future patients whether they  increase or decrease.
		</p>
		<br/>
		<!-- Accordion-->
		<dl class="tabs">
			<dd class="active"><a href="#simple1">Why We Did This</a></dd>
			<dd><a href="#simple2">How It Works</a></dd>

		</dl>
		<ul class="tabs-content">
			<li class="active" id="simple1Tab">
			<p>
				 We developed this prediction model for Punjab province administrative authorities and Punjab health department. This prediction system  helps them to be alert and aware of the dengue situation three weeks in advance. Online observation of dengue geographical flow, hotspot areas can be seen, and in time decision can be made, and awareness among the public can be conveyed before any worst situation, so this prediction system can save priceless lives and financial losses.
			</p>
	
		
			</li>
			<li id="simple2Tab">We know that dengue is primary source of dengue fever that commence its activities in a suitable environment. There are three meteorological factors that can effective environment like rainfall, temperature, humidity. We developed an equation by implementing multiple linear regression.It takes input of thee meteorological factors and predict dengue patient.</li>
            <br />
			
		</ul>
	</div><!-- end main content-->

	<!-- SIDEBAR-->
	<!-- end sidebar -->
</div>
<div class="hr">
</div>

<!-- FOOOTER 
================================================== -->
<div id="footer">
	<footer class="row">
	<p class="back-top floatright">
		<a href="#top"><span></span></a>
	</p>
	<div class="four columns">
		<a href="Default.aspx"><h1>Log Out </h1></a>
		<a href="NewPassword.aspx">Change Password</a>
	</div>
	<div class="four columns">
		<h1>GET SOCIAL</h1>
		<a class="social facebook" href="https://www.facebook.com/"></a>
		<a class="social twitter" href="https://twitter.com/"></a>
		<a class="social deviantart" href="https://www.deviantart.com/"></a>
		<a class="social flickr" href="https://www.flickr.com/"></a>
		<a class="social dribbble" href="https://dribbble.com/"></a>
	</div>
	<div class="four columns">
		<h1 class="newsmargin">NEWSLETTER</h1>
		<div class="row collapse newsletter floatright">
			<div class="ten mobile-three columns">
				<input type="text" class="nomargin" placeholder="Enter your e-mail address...">
			</div>
			<div class="two mobile-one columns">
			<a href="ContactUs.aspx" class="postfix button expand">GO</a>
			</div>
		</div>
	</div>
	</footer>
</div>
<div class="copyright">
	<div class="row">
		<div class="six columns">
			 &copy;<span class="small"> Copyright 2015 Your Agency Name</span>
		</div>
		<div class="six columns">
			<span class="small floatright"> Template by <a href="www.wowthemes.net">WowThemes.net</a></span>
		</div>
	</div>
</div>
<!-- JAVASCRIPTS 
================================================== -->
<!-- Javascript files placed here for faster loading -->
<script src="javascripts/foundation.min.js"></script>
<script src="javascripts/jquery.easing.1.3.js"></script>
<script src="javascripts/elasticslideshow.js"></script>
<script src="javascripts/jquery.carouFredSel-6.0.5-packed.js"></script>
<script src="javascripts/jquery.cycle.js"></script>
<script src="javascripts/app.js"></script>
<script src="javascripts/modernizr.foundation.js"></script>
<script src="javascripts/slidepanel.js"></script>
<script src="javascripts/scrolltotop.js"></script>
<script src="javascripts/hoverIntent.js"></script>
<script src="javascripts/superfish.js"></script>
<script src="javascripts/responsivemenu.js"></script>
    </form>
</body>
</html>
