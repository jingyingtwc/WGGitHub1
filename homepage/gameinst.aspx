<%@ Page Title="" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <link rel="stylesheet" href="assets/css/main.css" />
    <%--<body>--%>
    <!-- Main -->
				<div id="main">
					<section class="container">
						<div class="row">
							<section class="8u 12u(mobile)">
								<h2>Instruction</h2>
								<p>1 Waste Guru</p>
								<p>2 How to play</p>
								<p>3 some thing else</p>
								<p>4 more info</p>
								<p>5 done( place holders. never mind. )</p>
							</section>						
							<section class="4u 12u(mobile)">
								<div class="row" id="sidebar">
									<section class="12u">
										<h2>Start Game</h2>
										<p><a href="game.aspx"><img src="images/start.png" alt="Start Game" width="233" height="233"/></a></p>
										
										<%--<h3>Useful Links</h3>
										<ul>
											<li><a href="#">First Link</a></li>
											<li><a href="#">Another Link</a></li>
											<li><a href="#">And Another</a></li>
											<li><a href="#">Last One</a></li>
										</ul>
										
										<h3>More Useful Links</h3>
										<ul>
											<li><a href="#">First Link</a></li>
											<li><a href="#">Another Link</a></li>
											<li><a href="#">And Another</a></li>
											<li><a href="#">Last One</a></li>
										</ul>--%>
									</section>
								</div>
							</section>
						</div>	
					</section>
				</div>
<!-- Featured -->
				<%--<div id="featured">
					<section class="container">
						<header>
							<h2>Waste Guru</h2>
							<span class="byline">Hi mate. This is WasteGuru provided to you by Team ASYST.</span>
						</header>
					</section>
				</div>--%>
			
				


		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	<%--</body>--%>
    
</asp:Content>