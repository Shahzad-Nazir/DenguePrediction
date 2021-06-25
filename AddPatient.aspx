<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="UpdatedShahbazAhmad.AddPatient" %>


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
			<a href="HomePage.aspx">
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
			<h4>Add Patient Data</h4>
		</div>

        	<p >
			
                <asp:Label ID="lbl_city" runat="server" Text="Select District:" Visible="false"></asp:Label><br />
             
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="28px" Width="406px" Visible="false">
                     <asp:ListItem Value="0">City</asp:ListItem>
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
                    
		&nbsp;</p>
            <p>
				Select Gender:<br />
             
&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" Width="406px">
                     <asp:ListItem Value="M">Male</asp:ListItem>
                  <asp:ListItem Value="F">Female</asp:ListItem>
                
            </asp:DropDownList>
            </p>
             <p>
				Select Status:<br />
             
&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server" Height="28px" Width="406px">
                 <asp:ListItem>Status</asp:ListItem>
                     <asp:ListItem Value="p">Positive</asp:ListItem>
                  <asp:ListItem Value="s">Suspected</asp:ListItem>
                <asp:ListItem Value="c">Cured</asp:ListItem>
                
            </asp:DropDownList>
            </p>
		<p>
			Enter Age:
            <asp:TextBox ID="txt_age" runat="server" BackColor="White" BorderColor="Black" Width="407px" TextMode="Number" ></asp:TextBox>
		</p>
        		<p>
			Enter Today's Temperature:
            <asp:TextBox ID="txt_temp" runat="server" BackColor="White" BorderColor="Black" Width="407px" TextMode="Number"></asp:TextBox>
		</p>
        		
        		<p>
			Enter Today's Humidity:
            <asp:TextBox ID="txt_humidity" runat="server" BackColor="White" BorderColor="Black" Width="407px" TextMode="Number"></asp:TextBox>
		</p>
        		<p>
			Enter Today's Rain:
            <asp:TextBox ID="txt_rain" runat="server" BackColor="White" BorderColor="Black" Width="407px" TextMode="Number"></asp:TextBox>
		</p>
               <p>
				Select found Report Results:<br />
             
&nbsp;
            <asp:DropDownList ID="DropDownList4" runat="server" Height="28px" Width="406px">
                 <asp:ListItem>Report</asp:ListItem>
                     <asp:ListItem Value="1">IgG</asp:ListItem>
                  <asp:ListItem Value="2">IgM</asp:ListItem>
                <asp:ListItem Value="3">IgG and IgM</asp:ListItem>
                
            </asp:DropDownList>
            </p>
	
        <p>

            Plsease Select Date:

            <asp:Calendar ID="Calendar1" runat="server" Width="323px"></asp:Calendar>

        </p>

        <p>
			&nbsp;</p>
        <p>
			<asp:Button ID="Button1" runat="server" BackColor="#92D3C5" Font-Italic="True" Font-Strikeout="False" Height="34px" Text="Submit" Width="127px" OnClick="Button1_Click" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="Large" ForeColor="Red" Text="Data do not exist!" Visible="False"></asp:Label>
		    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
		    <asp:Label ID="lbl_cookie" runat="server" Text="Label" Visible="False"></asp:Label>
		</p>
		
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
