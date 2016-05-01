<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="master.master" CodeBehind="info.aspx.cs" Inherits="homepage.info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    <div style="position:absolute;top:0px;left:0px; width: 1904px; height: 1055px; text-align: center; background-color: white">
        <p>　</p>
        <p>　</p>
        <!--header-->
        <p style="font-size: xx-large">Hi kid!</p>
        <asp:Label ID="label1" runat="server" Font-Size="XX-Large">Here is some stuff about battery recycling.</asp:Label>

        <!--content-->
        <div style="width: 800px; text-align: center;margin:auto">
            <p>Why should batteries be recycled?</p>
            <p>Currently, less than 3% of all batteries purchased in Australia are recycled, the rest going to landfill. Battery recycling allows the non-renewable resources in batteries to be recovered. It removes toxic and hazardous substances from landfill, particularly lead, cadmium and mercury that may contaminate groundwater. Lithium metal batteries can cause explosions or fires if inappropriately stored or disposed.
What happens to the batteries collected?
            </p>
            <p>After collection batteries are sorted by chemistry type. They are then sent on to the respective recyclers in Australia and overseas. Australia currently does not have the technology and services required to recycle rechargeable and single use batteries so they will be processed overseas by a company specialising in the recovery of nickel, cadmium, lithium, zinc and other precious resources to strict environmental standards.
            </p>
            <p>Are rechargeable batteries better for the environment?
            </p>
            <p>Australians use approximately 10,000 tonnes of domestic batteries every year, approximately 70% are single-use batteries and most end up in landfill. If not disposed of correctly, batteries can contaminate soil, groundwater and other waste streams. Rechargeable batteries can be recharged hundreds of times, so not only do they save you money, but through effective recycling can reduce waste, reduce natural resource use and reduce the greenhouse gasses associated in extraction of these resources.
            </p>
        </div>

        <!--buttons-->
        <table style="align-items: center; bottom: 20px">
            <tr>
                <td style="text-align: left; vertical-align: middle">
                    <a href="index.aspx">
                        <asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" />
                        <asp:Label ID="Label2" runat="server" Text="Back"></asp:Label>
                    </a>

                </td>
                <td style="text-align: right; vertical-align: middle">
                    <a href="search.aspx">
                        <asp:Label ID="Label3" runat="server" Text="Search"></asp:Label>
                        <asp:Image ID="Image2" runat="server" ImageUrl="images/search.png" />
                    </a>
                </td>
            </tr>
        </table>















    </div>
</asp:Content>
