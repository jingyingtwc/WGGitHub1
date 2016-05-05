<%@ Page Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="homepage.WebForm1" %>

<%@ Import Namespace="System.IO" %>
<script language="c#" runat="server">

    private void find(object sender, EventArgs e)
    {
        if(TextBox1.Text.Trim()!=""){
        disposal.SelectCommand = "SELECT * FROM collection WHERE Postcode LIKE '%" + TextBox1.Text.Trim(' ') + "%'";



        gvProducts.DataSource = disposal;
        gvProducts.DataBind();}
        else{
            emprylabel.Visible = true;
            emprylabel.Text = "Plese enter a valid postcode";
        }
    }

</script>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html>

    <asp:AccessDataSource runat="server"
        DataFile="disposal.mdb"
        ID="disposal"></asp:AccessDataSource>




    <!-- body area -->
    <div style="text-align: center; background-color: white">
        <%--    <div style="width: 1904px; height: 1055px; text-align: center; background-color: white; position: absolute; left: 0px; top: 0px">--%>
        <p></p>
        <p></p>

        <p style="font-size: xx-large">Hi kid!</p>
        <asp:Label ID="label1" runat="server" Font-Size="3em">Enter your postcode and find the rubbish pick up date!</asp:Label><br />
        <asp:Label ID="label4" runat="server" Font-Size="XX-Large">And don't forget to remind your mom before that day!</asp:Label>

        <!--  table for position -->
        <div style="margin: auto">
            <table style="width: 900px; align-content: center; font-size: x-large" align="center">
                <tr>
                    <td>
                        <h1>Your postcode:</h1>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:Button ID="btnCollectionDate" OnClick="find" runat="server" Text="Find" CssClass="button" />
                    </td>
                </tr>
            </table>
        </div>

        <!-- result area -->
        <!-- data table -->
        <div id="disposalsitescontent" style="text-align: center; background-color: white; width: 800px; margin: auto">

            <asp:Label runat="server" ID="emprylabel" Visible="false" />
            <asp:GridView ID="gvProducts" runat="server"
                AllowPaging="false"
                AllowSorting="false"
                AutoGenerateColumns="false"
                PageSize="4"
                Font-Name="arial"
                Font-Size="24pt"
                HeaderStyle-BackColor="#dcdcdc"
                HeaderStyle-ForeColor="blue"
                EmptyDataText="Sorry. It seems that we do not have data of your area now.">


                <Columns>
                    <asp:BoundField DataField="Suburbs" HeaderText="Your suburb:"
                        SortExpression="Suburbs" />
                    <asp:BoundField DataField="Postcode" HeaderText="Your postcode:"
                        SortExpression="Postcode" />
                    <asp:BoundField DataField="Date" HeaderText="Collection date:"
                        SortExpression="Date" />

                </Columns>

            </asp:GridView>
            <br />
            <asp:Label ID="lblPagingInfo" runat="server" />

        </div>



        <!-- lowerpart buttons -->
        <div style="text-align: center; align-content: center; margin: auto; width: 800px">

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
                                <%--<asp:Image ID="Image2" runat="server" ImageUrl="images/search.png" OnClick="find"/>--%>
                                <asp:ImageButton ID="ImageButton1" ImageUrl="images/search.png" OnClick="find" runat="server" />
                            </tr>
                        </table>

                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
