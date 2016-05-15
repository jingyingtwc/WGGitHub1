<%@ Page Title="" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="index" %>

<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


    <div style="position: relative;text-align:center;vertical-align:middle; width: 99.9vw; height: 40vw;padding:0;margin:0;max-width:1903px">
        <div style="height:45%"></div>
        <h1>Hi mate.Why are you here?</h1>
        <h2>This is a 404 error. We all know it means the page you are looking for does not exist.</h2>
        <h2>Why do not go to homepage?</h2>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/back.png" /></asp:HyperLink>
    </div>
</asp:Content>
