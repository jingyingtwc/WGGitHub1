<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="funfactmaster.Master" CodeBehind="clothingff.aspx.cs" Inherits="homepage.clothingff" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <%--<body>--%>
    <!-- Main -->
    <div style=" text-align:center; background-color: white">
        <div style="display:inline-block;text-align:left">
            In Australia, over two billion aluminium cans are recycled every year. 
            Roughly ten percent of Australia’s electricity goes into making brand new aluminium 
            – using recycled cans to make new aluminium saves a huge amount of energy. 
            In fact, for every aluminium can you recycle, you save enough energy to power
             a television set for three hours!<br/>
                Recycling Tips - Sort it, check it, keep it clean<br/>
            • Make sure your aluminium cans are empty. Cans which only contained thin liquids like soft drinks or juices don’t need to be rinsed – if you shake them out until there are no more drips, that’s clean enough.<br/>
            • Don't put aluminium cans inside anything else, like boxes, bags or other containers. Make sure everything inside your recycling bin is loose, and not tied or attached to anything else – even other things made of the same material.<br/>
            • If your container recycling is separated from your paper/cardboard recycling make sure the aluminium cans go in with the containers.


        </div>
    </div>
    <!-- Featured -->
    <div id="featured">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">
            <asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" /></asp:HyperLink>
    </div>
        
</asp:Content>
