<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="UpdatedShahbazAhmad.Default" %>

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
  <!-- SLIDER 
================================================== -->
<div id="ei-slider" class="ei-slider">
	<ul class="ei-slider-large">
		<li>
		<img src="images/01.png" alt="image01" class="responsiveslide">
		<div class="ei-title">
			<h2>Say No to</h2>
			<h3>Dengue</h3>
		</div>
		</li>
		<li>
		<img src="images/2.JPG" alt="image02" class="responsiveslide">
		<div class="ei-title">
			<h2>Dengue</h2>
			<h3>Virus</h3>
		</div>
		</li>
		<li>
		<img src="images/3.JPG" alt="image03" class="responsiveslide">
		<div class="ei-title">
			<h2>Stop</h2>
			<h3>Dengue</h3>
		</div>
		</li>
		<li>
		<img src="images/4.JPG" alt="image04" class="responsiveslide">
		<div class="ei-title">
			<h2>Prevent  </h2>
			<h3>Breeding</h3>
		</div>
		</li>
		<li>
		<img src="images/5.JPG" alt="image05" class="responsiveslide">
		<div class="ei-title">
			<h2>Early</h2>
			<h3>Diagnosis</h3>
		</div>
		</li>
		<li>
		<img src="images/7.JPG" alt="image06" class="responsiveslide">
		<div class="ei-title">
			<h2>Stay</h2>
			<h3>Protected</h3>
		</div>
		</li>
		<li>
		<img src="images/11.JPG" alt="image07" class="responsiveslide">
		<div class="ei-title">
			<h2>Prevent</h2>
			<h3>Spread</h3>
		</div>
		</li>
		<li>
		<img src="images/8.JPG" alt="image08" class="responsiveslide">
		<div class="ei-title">
			<h2>Dengue</h2>
			<h3>Kills</h3>
		</div>
		</li>
		<li>
		<img src="images/12.JPG" alt="image09" class="responsiveslide">
		<div class="ei-title">
			<h2>Anti-Dengue</h2>
			<h3> Sprays</h3>
		</div>
		</li>
		<li>
		<img src="images/10.png" alt="image10" class="responsiveslide">
		<div class="ei-title">
			<h2>The Deadly </h2>
			<h3>Dengue</h3>
		</div>
		</li>
	</ul>
	<!-- slider-thumbs -->
	<ul class="ei-slider-thumbs">
		<li class="ei-slider-element">Current</li>
		<li><a href="#">Slide 1</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb01"/></li>
		<li><a href="#">Slide 2</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb02"/></li>
		<li><a href="#">Slide 3</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb03"/></li>
		<li><a href="#">Slide 4</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb04"/></li>
		<li><a href="#">Slide 5</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb05"/></li>
		<li><a href="#">Slide 6</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb06"/></li>
		<li><a href="#">Slide 7</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb07"/></li>
		<li><a href="#">Slide 8</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb08"/></li>
		<li><a href="#">Slide 9</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb09"/></li>
		<li><a href="#">Slide 10</a><img src="http://placehold.it/150x59/444" class="slideshowthumb" alt="thumb10"/></li>
	</ul>
</div>
<div class="minipause">
</div>
<!-- SUBHEADER
================================================== -->
<div id="subheader">
	<div class="row">
		<div class="twelve columns">
			
				 Kill The Dengue Mosquitoes Before They Kill You.
			
		</div>
	</div>
</div>
<!-- ANIMATED COLUMNS 
================================================== -->
<div class="row">
	<div class="twelve columns">
		<ul class="ca-menu">
			<li>
			<a href="https://www.who.int/news-room/fact-sheets/detail/dengue-and-severe-dengue">
			<span class="ca-icon"><i class="fa fa-heart"></i></span>
			<div class="ca-content">
				<h2 class="ca-main">World Health<br/> Organization</h2>
				<h3 class="ca-sub">Dengue is a mosquito-borne...</h3>
			</div>
			</a>
			</li>
			<li>
			<a href="https://www.researchgate.net/publication/303868970_Geographical_Information_System_Based_Approach_to_Monitor_Epidemiological_Disaster_2011_Dengue_Fever_Outbreak_in_Punjab_Pakistan">
			<span class="ca-icon"><i class="fa fa-bullhorn"></i></span>
			<div class="ca-content">
				<h2 class="ca-main">Dengue<br/>Fever Outbreak</h2>
				<h3 class="ca-sub">Epidemiological disaster...</h3>
			</div>
			</a>
			</li>
			<li>
			<a href="https://www.cdc.gov/dengue/prevention/index.html">
			<span class="ca-icon"><i class="fa fa-user"></i></span>
			<div class="ca-content">
				<h2 class="ca-main">Centers<br/> for Diseases</h2>
				<h3 class="ca-sub">All four dengue viruses...</h3>
			</div>
			</a>
			</li>
			<li>
			<a href="http://www.emro.who.int/pak/photo-gallery/dengue-fever.html">
			<span class="ca-icon"><i class="fa fa-camera"></i></span>
			<div class="ca-content">
				<h2 class="ca-main">Dengue fever<br/> Campaign</h2>
				<h3 class="ca-sub">Dengue in Pakistan...</h3>
			</div>
			</a>
			</li>
		</ul>
	</div>
</div>
<!-- CONTENT 
================================================== -->
<div class="row">
	<div class="twelve columns">
		<div class="centersectiontitle">
			<h4>What we did</h4>
		</div>
	</div>
</div>

<!-- TESTIMONIALS 
================================================== -->
<div class="row">
	<div >
		<div class="twelve columns" style="text-align:justify">
			
				
					 Dengue fever is a transmissible disease, it disseminates with Aedes aegypti mosquito bite, and the clinical signs appear from a couple of days to two weeks. It is observed by WHO that almost 40% of the world population is under dengue influence. Its endemic flow leads to paralyzing the human resources as well add burden to financial resources. In this Research study, we developed a dengue surveillance and prediction system for Punjab province by using the GIS tool along with .NET and SQL Server. An equation was prepared by blending metrological information and dengue registered patients by using cross-correlation function. This equation helps to predict the number of dengue patients in the upcoming week. We analyzed dengue registered patient data and metrological information by this system. This surveillance system developed the results in a thematic form, which revealed that dengue confined to district Lahore only from March to December 2011. In this outbreak, almost 80.95% of patients were only from District Lahore. 
	
		</div>
        <br />
        <div class="twelve columns"  style="text-align:justify">
			  
					 Lahore proved a hub of dengue outbreak as well as a hotspot area. Similarly, in 2016 results Lahore again proved the dengue emerging spot by infecting 1984 individuals, but this time outbreak got to start in June due to the favorable metrological environment and ended in December due to frosting temperature. In both cases, the 2011 and 2016 dengue outbreak commenced due to the suitable metrological environment. It disseminated into different geographical areas of Punjab. The results from the dengue prediction system show that the outbreak follows a seasonal pattern that initiates from August as Monsoon started, and its termination point was December due to a lower temperature.
				
		</div>
        <br />
         <div class="twelve columns"  style="text-align:justify">
			 
					 The first case registered in March, the session from March to July, carries a couple of patients per month. The outbreak parabola covers August to December due to meteorological factors (temperature, rainfall, humidity), which developed a suitable environment for dengue growth. Research results show that the temperature below 15°C and above 40°C bound dengue to her den. This surveillance and prediction system help the provincial administrative authority and health officials of Punjab. This system can make significant decisions about public health issues due to dengue. We can get more information to observe the thematic maps of the surveillance system and prediction graph. The surveillance system presents the current ebb and flow situation of geographical areas suffering from dengue. It also reflects the hotspot areas in Punjab and future outbreak by analysis of registered patients and meteorological factors every week.
			
		</div>
		<!--end testimonials-->
	</div>
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
