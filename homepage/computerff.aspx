﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="funfactmaster.Master" CodeBehind="clothingff.aspx.cs" Inherits="homepage.clothingff" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <%--<body>--%>
    <!-- Main -->
    <div style=" text-align:center; background-color: white">
        <div style="text-align:left; display:inline-block">
            Computers are classed as electronic waste (e-waste). E-waste contains toxic and hazardous materials such as lead, mercury, cadmium, and brominated fire retardants.<br/>
Reducing electronic waste doesn't just mean recycling old equipment. <br/>
            You can also:<br/>
            • Extend the life of your computer by buying an upgradeable model, or upgrading components - such as your video card or RAM - before replacing the whole system;<br/>
            • Consider buying computers and peripherals from refurbishing centres to encourage more computer recycling initiatives; <br/>
            • Don't let old computers sit around the house unused. The sooner you recycle it, the more chance it will be useful to someone else.

        </div>
    </div>
    <!-- Featured -->
    <div id="featured">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">
            <asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" /></asp:HyperLink>
    </div>
        
</asp:Content>
