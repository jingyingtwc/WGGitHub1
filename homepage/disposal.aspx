<%@ Page Language="C#" MasterPageFile="master.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<script language="c#" runat="server">
    
    protected void gvProducts_PageIndexChanged(object sender, EventArgs e)
    {

    }

    protected void find(object sender, EventArgs e)
    {
        string text = TextBox1.Text;
        int m = 0;
        try
        {
            m = Int32.Parse(text);
        }
        catch (FormatException ex)
        {
            Console.WriteLine(ex.Message);
            formatLabel.Text = "Please enter a valid postcode.";
        }

        int mplus = m + 10;
        int mminus = m - 10;



        switch (type.SelectedValue)
        {
            case "battery":
                dsAccess.SelectCommand = "select * from chemical where postcode > " + mminus + " and postcode <" + mplus + ";";
                break;
            case "can":
                dsAccess.SelectCommand = "select * from can where postcode > " + mminus + " and postcode <" + mplus + ";";
                break;
            case "chemical":
                dsAccess.SelectCommand = "select * from chemical where postcode > " + mminus + " and postcode <" + mplus + ";";
                break;
            case "clothing":
                dsAccess.SelectCommand = "select * from clothing where postcode > " + mminus + " and postcode <" + mplus + ";";
                break;
            case "computer":
                dsAccess.SelectCommand = "select * from computer where postcode > " + mminus + " and postcode <" + mplus + ";";
                break;
            case "mobilephone":
                dsAccess.SelectCommand = "select * from mobilephone where postcode > " + mminus + " and postcode <" + mplus + ";";
                break;
            case "TV":
                dsAccess.SelectCommand = "select * from tv where postcode > " + mminus + " and postcode <" + mplus + ";";
                break;
            case "whitegood":
                dsAccess.SelectCommand = "select * from whitegood where postcode > " + mminus + " and postcode <" + mplus + ";";
                break;
            default:
                break;
        }

            datagv.DataSource = dsAccess;
            datagv.DataBind();







    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

    <!-- data source -->
    <asp:AccessDataSource runat="server" ID="dsAccess"
        DataFile="disposal.mdb" />


    <div style="width: 1904px; height: 1055px; background-color: white; text-align: center; position: absolute; top: 0px;">

        <!-- header -->
        <div style="align-content: center; font-size: xx-large">
            <p></p>
            <p></p>

            <p>Hi kid! </p>
            <p>Find out your nearest disposal sites here!</p>
        </div>


        <!-- textbox area -->
        <div style="height: 200px; width: 800px; margin: auto; text-align: center">
            <table>
                <tr>
                    <td>
                        <div style="height: 200px; width: 200px; text-align: right; vertical-align: middle">
                            <asp:Label runat="server" Text="Enter your postcode" />
                        </div>
                    </td>
                    <td>
                        <div style="width: 400px; text-align: right; vertical-align: middle">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                            <asp:RadioButtonList ID="type" runat="server">
                                <asp:ListItem id="chemical" runat="server" Value="chemical" />
                                <asp:ListItem id="battery" runat="server" Value="battery" />
                                <asp:ListItem id="clothing" runat="server" Value="clothing" />
                                <asp:ListItem id="computer" runat="server" Value="computer" />
                                <asp:ListItem id="mobilephone" runat="server" Value="mobilephone" />
                                <asp:ListItem id="TV" runat="server" Value="TV" />
                                <asp:ListItem id="whitegood" runat="server" Value="whitegood" />
                                <asp:ListItem id="can" runat="server" Value="can" />

                            </asp:RadioButtonList>
                        </div>
                    </td>
                    <td>
                        <div style="height: 200px; width: 200px; text-align: right; vertical-align: middle">
                            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="find" />
                        </div>
                    </td>
                </tr>
            </table>
        </div>


        <!-- data table for chemical -->
        <div style="margin: auto; text-align: center; background-color: white; width: 800px">
            <asp:Label ID="formatLabel" runat="server" />
            <asp:GridView ID="datagv" runat="server"
                AutoGenerateColumns="false"
                Font-Name="arial"
                Font-Size="14pt"
                HeaderStyle-BackColor="#dcdcdc"
                HeaderStyle-ForeColor="blue"
                EmptyDataText="Sorry. It seems that we do not have data of your area now.">

                <Columns>
                    <asp:BoundField DataField="Retailer" HeaderText="Retailer"
                        SortExpression="Retailer" />
                    <asp:BoundField DataField="SiteSuburb" HeaderText="Suburb"
                        SortExpression="SiteSuburb" />
                    <asp:BoundField DataField="SiteAddress" HeaderText="Address"
                        SortExpression="SiteAddress" />
                    <asp:BoundField DataField="Postcode" HeaderText="Postcode"
                        SortExpression="Postcode" />

                </Columns>

            </asp:GridView>
            <br />

        </div>


        <!-- lower part buttons -->
        <table style="align-content: flex-end; width: 800px; height: 300px;">
            <tr>
                <td style="width: 200px; height: 300px">
                    <table>
                        <tr>
                            <td><a href="index.aspx">
                                <asp:Image ID="Image1" runat="server" ImageUrl="images/back.png" />
                                <asp:Label ID="Label2" runat="server" Text="Back"></asp:Label>
                            </a></td>
                        </tr>
                        <tr>
                            <td><a href="search.aspx">
                                <asp:Image ID="Image4" runat="server" ImageUrl="images/search.png" />
                                <asp:Label ID="Label1" runat="server" Text="Search"></asp:Label>
                            </a></td>
                        </tr>
                    </table>
                </td>

                <td style="text-align: center; width: 400px; height: 300px;">
                    <asp:Image ID="Image3" runat="server" ImageUrl="images/battery.png" />
                </td>

                <td style="width: 200px; height: 300px">
                    <table style="text-align: right">
                        <tr>
                            <td>
                                <a href="info.aspx">
                                    <asp:Label runat="server" Text="Know more about the battery recycling!" />
                                </a></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image runat="server" ImageUrl="images/lion.png" />
                            </td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table>

    </div>


</asp:Content>



