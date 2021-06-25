<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="UpdatedShahbazAhmad.ContactUs" %>

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
				 CONTACT US
			</p>
		</div>
	</div>
</div>
<div class="hr">
</div>
<!-- CONTENT 
================================================== -->
<div class="row">
    <!-- GOOGLE MAP IFRAME -->
	<div class="twelve columns">
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3403.262993712063!2d73.14641521428001!3d31.461950881388923!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3922691075c289bf%3A0xd48f8a2cd3c489f8!2sNational%20Textile%20University!5e0!3m2!1sen!2s!4v1623422350211!5m2!1sen!2s" width="900" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
	</div>
</div>
<div class="row">
	<!-- CONTACT FORM -->
	<div class="twelve columns">
		<div class="wrapcontact">
			<h5>SEND US A MESSAGE</h5>
			<div class="done">
				<div class="alert-box success">
				 Message has been sent! <a href="" class="close">x</a>
				</div>
			</div>			
				</div>
				<div class="form">
				    <div class="six columns noleftmargin">
					<p>
			Enter Name:
            <asp:TextBox ID="txt_name" runat="server" BackColor="White" BorderColor="Black" Width="407px"></asp:TextBox>
		</p>
					</div>
					<div class="six columns noleftmargin">
							<p>
			Enter Email Address:
            <asp:TextBox ID="txt_email" runat="server" BackColor="White" BorderColor="Black" Width="407px" TextMode="Email"></asp:TextBox>
		</p>
					</div>
					<label>Message</label>
                    <textarea id="TextArea1" runat="server" rows="15"></textarea>
					
								<asp:Button ID="Button1" runat="server" BackColor="#92D3C5" Font-Italic="True" Font-Strikeout="False" Height="34px" Text="Submit" Width="127px" OnClick="Button1_Click" />
		
				    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
		
				</div>
				</form>
		</div>
	</div>
												
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
			 &copy;<span class="small"> Copyright 2021 Shahbaz Ahmad</span>
		</div>
		<div class="six columns">
			<span class="small floatright"> "National Textile University Faisalabad</span>
		</div>
	</div>
</div>
<!-- JAVASCRIPTS 
================================================== -->
<!-- Javascript files placed here for faster loading -->
<script src="javascripts/foundation.min.js"></script>
<script src="javascripts/formvalidation.js"></script>
<script src="javascripts/jquery.cycle.js"></script>
<script src="javascripts/app.js"></script>
<script src="javascripts/modernizr.foundation.js"></script>
<script src="javascripts/slidepanel.js"></script>
<script src="javascripts/scrolltotop.js"></script>
<script src="javascripts/hoverIntent.js"></script>
<script src="javascripts/superfish.js"></script>
<script src="javascripts/responsivemenu.js"></script>
<script src="javascripts/jquery.tweet.js"></script>

    </form>
</body>
</html>
