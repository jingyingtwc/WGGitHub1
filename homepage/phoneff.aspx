<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="funfactmaster.Master" CodeBehind="clothingff.aspx.cs" Inherits="homepage.clothingff" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <%--<body>--%>
    <!-- Main -->
    <div style=" text-align:center; background-color: white">
        <div style="text-align:left; display:inline-block">
            Mobile phones and their batteries contain toxic heavy metals and are not safe to be sent 
            to landfill. It is important to take your old mobile phones and their batteries to an 
            appropriate collection point, and not place them in your garbage or recycling bins at home or work.<br/>
What else can I do with my old mobile phones?<br/>
            ·Recycling mobile phones and their components is easy by dropping them off at a retailer which participates in a mobile phone recycling program. The next time you buy a new phone, check to see if you can leave your old phone behind for recycling.

        </div>
    </div>
    <!-- Featured -->
    <div id="featured">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">
            <asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" /></asp:HyperLink>
    </div>
        
</asp:Content>
