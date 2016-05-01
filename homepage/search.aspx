<%@ Page Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="homepage.WebForm1" %>

<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html>

    <!-- body area -->
    <div style="width: 1904px; height: 1055px; text-align: center; background-color: white">
        <p>　</p>
        <p>　</p>

        <p style="font-size: xx-large">Hi kid!</p>
        <asp:Label ID="label1" runat="server" Font-Size="XX-Large">Enter your postcode and find the rubbish pick up date!</asp:Label>

        <!--  sth wrong with the table. connot be aligned center -->
        <div style="margin: auto">
            <table style="width: 900px; align-content: center; font-size: x-large" align="center">
                <tr>
                    <td>
                        <h1>Your postcode:</h1>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>

        <asp:Label ID="resultlabel" runat="server"></asp:Label>


        <!-- lowerpart buttons -->
        <table>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td><a href="index.aspx">
                                <asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" />
                                <asp:Label ID="Label2" runat="server" Text="Back"></asp:Label>
                            </a></td>
                        </tr>
                    </table>
                </td>

                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="images/bin.png" />
                </td>

                <td>
                    <table>
                        <tr>
                            <asp:Label ID="Label3" runat="server" Text="Search"></asp:Label>
                            <asp:Image ID="Image2" runat="server" ImageUrl="images/search.png" />
                        </tr>
                    </table>

                </td>
            </tr>
        </table>

    </div>
</asp:Content>
