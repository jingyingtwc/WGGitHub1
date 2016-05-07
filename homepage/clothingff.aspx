<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="funfactmaster.Master" CodeBehind="clothingff.aspx.cs" Inherits="homepage.clothingff" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <%--<body>--%>
    <!-- Main -->
    <div style="text-align: left;font-size:0.6em">
        Unwanted clothing can be reused, recycled or safely destroyed through a range of charity programs and 
        commercial recyclers, depending on their quality and quantity. Pre-consumer textiles can be sold for 
        use in manufacturing into smaller goods or donated to charities or craft stores.
        Fabrics represent a large investment in water, energy and raw materials. Reuse programs will have the largest environmental benefit.<br />
        <p style="color:gold">Clothes</p>
        
        Reusing and recycling clothing saves natural resources, reduces pollution and waste, and helps people in need - or even those just looking for funky threads.<br />
        <p style="color:gold">Leather</p>
        The leather tanning processes involves large amounts of water and chemicals to produce workable, durable leather. By recycling or reusing leather scrap and off cuts this diverts usable materials from landfill and reduces the demand for virgin leather production.

    </div>
    <!-- Featured -->
    <div id="featured">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">
            <asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" />
        </asp:HyperLink>
    </div>

</asp:Content>
