<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="funfactmaster.Master" CodeBehind="clothingff.aspx.cs" Inherits="homepage.clothingff" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <%--<body>--%>
    <!-- Main -->
  
        <div style="text-align:left;font-size:0.6em">
            Paint contains chemicals such as solvents and metals that can contaminate our groundwater and endanger 
            human health. It is important to not put these items into your garbage bin. By recycling your paint 
            you can play an important role in protecting our environment.<br/>
*  Use up left over paint, or give it to a friend to use.<br/>
*  Read the labels for safety instructions.<br/>
*  Never mix paint with any other liquid or solid substance, other than as directed on the label.<br/>
*  Never put liquid paint in the garbage bin and never pour it down the drain.<br/>
*  Store leftover paint in the original container with the label intact.<br/>
*  Store paint away from extreme temperatures.<br/>


        </div>

    <!-- Featured -->
    <div id="featured">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">
            <asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" /></asp:HyperLink>
    </div>
        
</asp:Content>
