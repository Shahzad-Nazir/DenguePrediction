<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateData.aspx.cs" Inherits="UpdatedShahbazAhmad.UpdateData" %>

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
				 <b><span>Dengue Virus in Punjab Pakistan</span></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="lbl_search" runat="server" Font-Size="Medium" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
			</p>

            <div class="four columns">
			<div class="row collapse">
				<div class="ten mobile-three columns">
                   
                    <asp:TextBox ID="txt_search" runat="server" class="nomargin" placeholder="Search..."></asp:TextBox>
					
				</div>
				<div class="two mobile-one columns">
                    <asp:Button ID="Button2" runat="server" Text="Go"  class="postfix button expand" OnClick="Button2_Click"/>
					
				</div>
			</div>
		</div>

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
			<h4>Edit Patient Data</h4>
		</div>

        <p>

         

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="873px"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="10" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerSettings Position="Top" />
                <PagerStyle BackColor="#284775" ForeColor="Blue" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            
                
           
        </p>



    
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