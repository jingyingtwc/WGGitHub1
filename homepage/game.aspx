﻿<%@ Page Title="" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server"  onbeforeunload="unload()" >
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    <script type="text/javascript">
        //need to confirm before leaving this page
        window.onbeforeunload = function (event) {
            return 'Are you sure you want to leave? Your game will not be saved.';
        };
    </script>
    <%--<body>--%>

    <div style="text-align: center; position: relative; margin-left: auto; margin-right: auto; top: 0; width: 900px; height: 576px">

        <!--game inst-->
        <div style="position: absolute; top: 30px; left: 0; height: 576px">
            <!--inst pic-->
            <div style="position: absolute; top: 0; height: 70%">
                <img alt="Game's Legend" src="images/gamelegend.png" height="400" />
            </div>

            <!--back-->
            <div style="position: absolute;left:50px; bottom: 0">
                <a href="index.aspx">
                    <img alt="Back to homepage" src="images/back.png" />
                </a>
            </div>
        </div>

        <!-- game -->
        <div style="text-align: center; background-color: white; position: absolute; top: 30px; right: 0">
            <div>
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



    </div>
   
</asp:Content>
