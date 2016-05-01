<%@ Page Title="" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <link rel="stylesheet" href="assets/css/main.css" />

    <%--<body>--%>
    <!-- middle image -->
    <div style="width: 1904px; height: 1050px">
        <div style="width: 1904px; height: 1050px; margin-left: auto; margin-right: auto; z-index: 0;background-image:url('images/bg.png')">
            
        </div>

        <!-- top left -->
        <div style="width: 400px; height: 430px; position: absolute; left: 0px; top: 0px; z-index: 1" onclick="location.href='game.aspx';" >   </div>

        <!-- top right -->
        <div style="width: 377px; height: 497px; position: absolute; right: 0px; top: 0px; z-index: 1" onclick="location.href='#';" >   </div>

        <!-- bottom left -->
        <div style="width: 384px; height: 334px; position: absolute; left: 0px; bottom: 0px; z-index: 1" onclick="location.href='disposal.aspx';" >   </div>

        <!-- bottom right -->
        <div style="width: 360px; height: 263px; position: absolute; right: 0px; bottom: 0px; z-index: 1" onclick="location.href='#';" >   </div>
    </div>
</asp:Content>