<%@ Page Title="" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <link rel="stylesheet" href="assets/css/main.css" />
    <%--<body>--%>
    <!-- Main -->
    <div align="center">
        <%--<!----------------------以下代碼用來顯示flash------------------------->
        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="640" height="576">
            <param name="movie" value="Dungeons.swf"/>
            <!---- 上value值填入flash的地址，你的flash在本機上就用相對地址!---->
            <param name="quality" value="high"/>
            <param name="SCALE" value="exactfit"/>
            <!---- 下src值填入和剛才一樣的地址!---->
            <embed src="Dungeons.swf" width="640" height="576" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" scale="exactfit"/>
        </object>
        <!----------------------顯示flash代碼結束------------------------>--%>
        <object type="application/x-shockwave-flash" data="Dungeons.swf" width="640" height="576" id="vcastr3" bgColor="#000000">
        <param name="movie" value="Dungeons.swf"/>
        <param name="allowFullScreen" value="true" />
        <param name="FlashVars" value="xml=vcastr.xml" />
        <param name="bgColor" value="#000000" />
        <param name="quality" value="high" />
        <param name="scale" value="showall" />
</object>
    </div>
    <!-- Featured -->
    <div id="featured">
        <section class="container">
            <header>
                <h2>Waste Guru</h2>
                <span class="byline">Hi mate. This is WasteGuru provided to you by Team ASYST.</span>
            </header>
        </section>
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
