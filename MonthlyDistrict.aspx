<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MonthlyDistrict.aspx.cs" Inherits="UpdatedShahbazAhmad.MonthlyDistrict" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
				 <b><span>Dengue Virus in Punjab Pakistan</span></b>
			</p>
		</div>
	</div>
</div>
<div class="hr">
</div>
<!-- CONTENT 
================================================== -->
<div class="row">
	<!-- PROJECT DESCRIPTION-->
	<div class="six columns">
		<div class="sectiontitle">
			<h4>Monthly Analysis of Districts</h4>
		</div>

                	<p>
			Select District:<br />
&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" Height="28px" Width="406px">
                     <asp:ListItem>City</asp:ListItem>
                    <asp:ListItem Value="1">Attock</asp:ListItem>
                    <asp:ListItem Value="2">Bahawal Nagar</asp:ListItem>
                    <asp:ListItem Value="3">Bahawal Pur</asp:ListItem>
                    <asp:ListItem Value="4">Bhakkar</asp:ListItem>
                    <asp:ListItem Value="5">Chakwal</asp:ListItem>
                    <asp:ListItem Value="6">Daska</asp:ListItem>
                    <asp:ListItem Value="7">D.G Khan</asp:ListItem>
                    <asp:ListItem Value="8">Faisalabad</asp:ListItem>
                    <asp:ListItem Value="9">Gujranwala</asp:ListItem>
                    <asp:ListItem Value="10">Gujrat</asp:ListItem>
                    <asp:ListItem Value="11">Hafizabad</asp:ListItem>
                    <asp:ListItem Value="12">Hujra</asp:ListItem>
                    <asp:ListItem Value="13">jhang</asp:ListItem>
                    <asp:ListItem Value="14">jehlam</asp:ListItem>
                    <asp:ListItem Value="15">Kasor</asp:ListItem>
                    <asp:ListItem Value="16">Khanewal</asp:ListItem>
                    <asp:ListItem Value="17">Khushab</asp:ListItem>
                    <asp:ListItem Value="18">lahore</asp:ListItem>
                    <asp:ListItem Value="19">Layya</asp:ListItem>
                    <asp:ListItem Value="20">Lodhrans</asp:ListItem>
                    <asp:ListItem Value="21">Mandi</asp:ListItem>
                    <asp:ListItem Value="22">Mianwali</asp:ListItem>
                    <asp:ListItem Value="23">Multan</asp:ListItem>
                    <asp:ListItem Value="24">Mazafar Garh</asp:ListItem>
                    <asp:ListItem Value="25">Nankana</asp:ListItem>
                    <asp:ListItem Value="26">Narowal</asp:ListItem>
                    <asp:ListItem Value="27">Okara</asp:ListItem>
                    <asp:ListItem Value="28">Pakpatan</asp:ListItem>
                    <asp:ListItem Value="29">R.KHAN</asp:ListItem>
                    <asp:ListItem Value="30">Rajinpur</asp:ListItem>
                    <asp:ListItem Value="31">Rawilpindi</asp:ListItem>
                    <asp:ListItem Value="32">Sahiwal</asp:ListItem>
                    <asp:ListItem Value="33">Sargodha</asp:ListItem>
                    <asp:ListItem Value="34">Shakar Garh</asp:ListItem>
                    <asp:ListItem Value="35">Sheikhupura</asp:ListItem>
                    <asp:ListItem Value="36">Sailkot</asp:ListItem>
                    <asp:ListItem Value="37">Singh</asp:ListItem>
                    <asp:ListItem Value="38">Vehari</asp:ListItem>
            </asp:DropDownList>
		</p>






		<p>
			Select Year:<br />
            

&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="406px">
                  <asp:ListItem>Year</asp:ListItem>
 
            </asp:DropDownList>
		</p>

        <p>
			Select Month:<br />
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="406px">
                    <asp:ListItem>Month</asp:ListItem>
                    <asp:ListItem Value="01">January</asp:ListItem>
                    <asp:ListItem Value="02">February</asp:ListItem>
                    <asp:ListItem Value="03">March</asp:ListItem>
                    <asp:ListItem Value="04">April</asp:ListItem>
                    <asp:ListItem Value="05">May</asp:ListItem>
                    <asp:ListItem Value="06">June</asp:ListItem>
                    <asp:ListItem Value="07">July</asp:ListItem>
                    <asp:ListItem Value="08">August</asp:ListItem>
                    <asp:ListItem Value="09">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
            </asp:DropDownList>
		</p>


        <p>
			<asp:Button ID="Button1" runat="server" BackColor="#92D3C5" Font-Italic="True" Font-Strikeout="False" Height="34px" OnClick="Button1_Click" Text="Submit" Width="127px" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Red" Text="Data do not exist!" Visible="False"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Red" Text="Data do not exist!" Visible="False"></asp:Label>
		</p>
		<dl class="tabs">
			<dd class="active"><a href="#simple1">Graph</a></dd>
			<dd><a href="#simple2">Features</a></dd>
			<dd><a href="#simple3">What We Did</a></dd>
		</dl>
		<ul class="tabs-content">
			<li class="active" id="simple1Tab">
			<p>
				
                	<div class="six columns">
		<div class="slider-wrapper theme-default">
			 
            <asp:Chart ID="Chart1" runat="server" Width="950px" Height="475">
                  <Series>
                 <asp:Series ChartType="Spline" Name="Actual Cases" XValueMember="Date" YValueMembers="Cases" YValuesPerPoint="2">
                 </asp:Series>
                 <asp:Series ChartArea="ChartArea1"  ChartType="Spline" Name="Predicted Cases" XValueMember="Date" YValueMembers="Prediction_Value" YValuesPerPoint="2" Color="Red">
                 </asp:Series>
                                            
               </Series>

                     <Legends>
                    <asp:Legend Name="" Title="" LegendStyle="Row" Docking="Bottom" >
                    </asp:Legend>
                </Legends>

               <ChartAreas>
                                                
                 <asp:ChartArea Name="ChartArea1">
                 <AxisX Title ="Days"></AxisX>
                 <AxisY Title ="Prediction Out Break Value"></AxisY>
                 </asp:ChartArea>
               </ChartAreas>
            </asp:Chart>
		</div>
	</div>


			</p>
		
			</li>
				<li id="simple2Tab">
			<p style="text-align:justify">
				 The prediction system requires the number of dengue registered patients and meteorological factors information daily to determine whether the dengue outbreak  occur or not.
			</p>
		
			<p style="text-align:justify">
				 These meteorological factors are consisted of Temperature, Humidity and Rainfall.
			</p>
                <p style="text-align:justify">
                    <br/>
                    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                </p>
			</li>
			<li id="simple3Tab">
                <p style="text-align:justify">
                   <i> Dengue outbreak occur in 2011 and infected almost 21000 patients ,200 causalities and again hit in 2016.</i>
                </p>
			<p style="text-align:justify">
				<i>We develop dengue prediction and surveillance system to assist our Punjab health department and administrative authorities of Punjab province.</i>
			</p>
			<p style="text-align:justify">
				<i>Therefore, it can reduce human and financial loss in future by assisting both health department and administrative authorities.</i>
			</p>
                <p>
                    <br/>
                    <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                </p>
			</li>
		</ul>
	</div>
	<!-- end main content-->
	<!-- SLIDER-->
	
	<!-- end sliderr-->
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
<!-- Javascript files placed here for faster loading -->
<script src="javascripts/foundation.min.js"></script>
<script src="javascripts/jquery.cycle.js"></script>
<script src="javascripts/app.js"></script>
<script src="javascripts/modernizr.foundation.js"></script>
<script src="javascripts/slidepanel.js"></script>
<script src="javascripts/scrolltotop.js"></script>
<script src="javascripts/hoverIntent.js"></script>
<script src="javascripts/superfish.js"></script>
<script src="javascripts/responsivemenu.js"></script>
<script src="javascripts/elasticslideshow.js"></script>
    </form>
</body>
</html>
