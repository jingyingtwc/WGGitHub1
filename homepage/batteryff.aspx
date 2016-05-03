<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="funfactmaster.Master" CodeBehind="clothingff.aspx.cs" Inherits="homepage.clothingff" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <%--<body>--%>
    <!-- Main -->
    <div style=" text-align:center; background-color: white">
        <div style="display:inline-block">
            Why should batteries be recycled?
Currently, less than 3% of all batteries purchased in Australia are recycled, the rest going to landfill. Battery recycling allows the non-renewable resources in batteries to be recovered. It removes toxic and hazardous substances from landfill, particularly lead, cadmium and mercury that may contaminate groundwater. Lithium metal batteries can cause explosions or fires if inappropriately stored or disposed.
What happens to the batteries collected?
After collection batteries are sorted by chemistry type. They are then sent on to the respective recyclers in Australia and overseas. Australia currently does not have the technology and services required to recycle rechargeable and single use batteries so they will be processed overseas by a company specialising in the recovery of nickel, cadmium, lithium, zinc and other precious resources to strict environmental standards.

        </div>
    </div>
    <!-- Featured -->
    <div id="featured">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">
            <asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" /></asp:HyperLink>
    </div>
        
</asp:Content>
