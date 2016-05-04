<%@ Page Title="" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    
    <!-- middle image -->
    <div style="width: 100%">
        <%--<div style="width: 100%;height:100% ; margin-left: 0; margin-right: 0; background-image:url('images/bg.png')">--%>
                    <div style="width: 100%;height:100% ; margin-left: 0; margin-right: 0">

        <img alt="11" src="images/bg.png" width=100% />
        </div>

        <!-- top left / game-->
        <div style="width: 20%; height: 40%; position: absolute; left: 0px; top: 30px; z-index: 1" onclick="location.href='game.aspx';"  title="You want to play a game? You will learn a lot about waste in this game!">   </div>

        <!-- top right / collection date-->
        <div style="width: 20%; height: 40%; position: absolute; right: 0px; top: 30px; z-index: 1" onclick="location.href='search.aspx';" title="You can find the date that your rubbish will be collected! Don't forget to tell your mom!">   </div>

        <!-- bottom left / disposal -->
        <div style="width: 20%; height: 40%; position: absolute; left: 0px; bottom: 0px; z-index: 1" onclick="location.href='disposal.aspx';" title="Here you can find the nearst disposal sites so you can dispose your special rubbish!">   </div>

        <!-- bottom right / funfacts -->
        <div style="width: 20%; height: 40%; position: absolute; right: 0px; bottom: 0px; z-index: 1" onclick="location.href='clothingff.aspx';" title="Want to know more? Check these fun facts related to your life!">   </div>
    </div>
</asp:Content>