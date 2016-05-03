<%@ Page Title="" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <%--<body>--%>
    <!-- Main -->
    <div style=" text-align:center; background-color: white">
        <div style="display:inline-block">
            <object type="application/x-shockwave-flash" data="Dungeons.swf" width="640" height="576" id="vcastr3" bgcolor="#000000">
                <param name="movie" value="Dungeons.swf" />
                <param name="allowFullScreen" value="true" />
                <param name="FlashVars" value="xml=vcastr.xml" />
                <param name="bgColor" value="#000000" />
                <param name="quality" value="high" />
                <param name="scale" value="showall" />
            </object>
        </div>
    </div>
    <!-- Featured -->
    <div id="featured">
        <section class="container">
            <header>
                <h2>Waste Guru</h2>
                <span class="byline">Hi kid. This is WasteGuru provided to you by Team ASYST.</span>
            </header>
        </section>
    </div>
        
</asp:Content>
