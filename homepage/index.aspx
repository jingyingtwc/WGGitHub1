<%@ Page Title="" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <link rel="stylesheet" href="assets/css/main.css" />
    <%--<body>--%>

    <!-- Banner -->
				<div id="banner">
					<div class="container">						
						<div class="row">
							<div class="9u 12u(mobile)">
								<section>
									<a class="image full"><img src="images/33.png" alt="logo-large" height="500" width="10000" /></a>
								</section>
							</div>
							<div class="3u 12u(mobile)">
								<section>
									<div style="height:500px" class="bannerbox">
										<h2>WasteGuru Game!</h2>
										<p>This s the instruction of the game.</p>
                                        <p><a class="image full" href="gameinst.aspx"><img src="images/start.png" alt="Start Game" /></a></p>
									</div>
								</section>
							</div>							
						</div>
					</div>
				</div>

			
				
			



		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	<%--</body>--%>
    
</asp:Content>