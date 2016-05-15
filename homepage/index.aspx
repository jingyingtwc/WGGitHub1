<%@ Page Title="" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


    <div style="position: relative; width: 99.9vw; height: 50.4vw;padding:0;margin:0;max-width:1903px">

        <!-- bg image-->
        <div style="width: 100%; height: 100%; margin-left: 0; margin-right: 0;max-width:1903px">
            <img width="100%" alt="11" src="images/bg.png"  />
        </div>

        <!-- top left / game-->
        <div style="width: 20.903%; height: 41.143%; position: absolute; left: 0px; top: 0px;">
            <a href="game.aspx" title="You want to play a game? You will learn a lot about waste in this game!">
                <img width="100%" alt="You want to play a game? You will learn a lot about waste in this game!" src="images/gameicon.png" /></a>
        </div>

        <!-- top right / collection date-->
        <div style="width: 28.571%; height: 45.238%; position: absolute; right: 0px; top: 0px;">
            <a href="search.aspx" title="You can find the date that your rubbish will be collected! Don't forget to tell your mum!">
                <img width="100%" alt="You can find the date that your rubbish will be collected! Don't forget to tell your mum!" src="images/collectionicon.png" /></a>
        </div>

        <!-- bottom left / disposal -->
        <div style="width: 27.311%; height: 47.619%; position: absolute; left: 0px; bottom: 0px;">
            <a href="disposal.aspx" title="Here you can find the nearst disposal sites so you can dispose your special rubbish!">
                <img width="100%" alt="Here you can find the nearst disposal sites so you can dispose your special rubbish!" src="images/disposalicon.png" /></a>
        </div>

        <!-- bottom right / funfacts -->
        <div style="width: 24.422%; height: 44.095%; position: absolute; right: 0px; bottom: 0px;">
            <a href="clothingff.aspx" title="Want to know more? Check these fun facts related to your life!">
                <img width="100%" alt="Want to know more? Check these fun facts related to your life!" src="images/fficon.png" /></a>
        </div>
    </div>
</asp:Content>
