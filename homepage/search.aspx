<%@ Page Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="homepage.WebForm1" %>

<%@ Import Namespace="System.IO" %>
<script language="c#" runat="server">

    private void find(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim() != "")
        {
            disposal.SelectCommand = "SELECT * FROM collection WHERE Postcode LIKE '%" + TextBox1.Text.Trim(' ') + "%'";



            gvProducts.DataSource = disposal;
            gvProducts.DataBind();
        }
        else
        {
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
    <div style="text-align: center; position: center; min-width: 1150px">
        <div>
            <p style="font-size: 3em">Enter your postcode and find the rubbish pick up date!</p>
            <p style="font-size: 3em">And don't forget to remind your mum before that day!</p>
        </div>
        <!-- search text button etc -->
        <div style="display: inline-block; position: relative; top: 10px; width: 1150px">

            <div style="font-size: 3em; position: absolute; top: 0; left: 0; color: goldenrod">
                Your postcode
                <br />
                or city:
            </div>
            <div style="position: absolute; top: 0; right: 0">
                <asp:TextBox ID="TextBox1" runat="server" Width="800" Height="120" BackColor="#3FC367" Font-Size="90pt" Font-Bold="True" Font-Italic="False" BorderColor="Black" BorderWidth="2px"></asp:TextBox><br/>
                <asp:RequiredFieldValidator ID="va1" runat="server" style="font-size:2em" ErrorMessage="Please enter a postcode." ControlToValidate="TextBox1" />
                <asp:RegularExpressionValidator ID="va2" runat="server" style="font-size:2em" ControlToValidate="TextBox1" ValidationExpression="\d\d\d\d" ErrorMessage="Please enter a valid postcode" Display="Dynamic" />

            </div>

            <!-- data table -->
            <div id="disposalsitescontent" style="text-align: center; width: 1150px; margin: auto">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <div style="display: inline-block">
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
            </div>
        </div>





        <!-- lowerpart buttons -->
        <div style="text-align:justify;text-align-last:justify; margin: auto; width: 1050px">
            <a href="index.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" /></a>
            <asp:Image ID="Image3" runat="server" ImageUrl="images/bin.png" Height="190px" />
            <asp:ImageButton ID="ImageButton1" ImageUrl="images/search.png" OnClick="find" runat="server" />
        </div>
    </div>
</asp:Content>
